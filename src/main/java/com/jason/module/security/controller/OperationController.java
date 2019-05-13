package com.jason.module.security.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.security.dto.OperationDto;
import com.jason.module.security.entity.Menu;
import com.jason.module.security.entity.Operation;
import com.jason.module.security.service.OperationService;
import org.apache.commons.lang3.RegExUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.mvc.condition.PatternsRequestCondition;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

/**
 * <p>
 * 操作表 前端控制器
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
@RestController
@RequestMapping("/operation")
public class OperationController extends BaseController{

    @Autowired
    private RequestMappingHandlerMapping requestMappingHandlerMapping;

    @Autowired
    private OperationService operationService;

    @PostMapping(value="/create",name="新增操作")
    public JsonResponse create(@RequestBody Operation operation){
        operationService.saveOperation(operation);
        return JsonResponse.buildSuccess();
    }

    @DeleteMapping(value="/{id}/delete",name="删除操作")
    public JsonResponse delete(@PathVariable("id") Long id){
        operationService.remove(new QueryWrapper<Operation>().eq("id",id));
        return JsonResponse.buildSuccess();
    }

    @PutMapping(value="/update",name="更新操作")
    public JsonResponse update(@RequestBody Operation operation){
        operationService.updateById(operation);
        return JsonResponse.buildSuccess();
    }

    @GetMapping(value="/{roleId}/list",name="获取角色下操作")
    public JsonResponse<Map<String,Object>> getOpsByRoleId(@PathVariable("roleId")Long roleId){
        Map<String,Object> map;
        if(isAdmin()){
            map = operationService.getUserOperationList(roleId);
        }else{
            map = operationService.getUserOperationList(roleId,this.getUserRoleIds());
        }
        return new JsonResponse<>(ResponseCode.SUCCESS,map);
    }

    @GetMapping(value="/pageList",name="操作分页列表")
    public JsonResponse<Page<Operation>> pageList(
            @RequestParam(value = "pageNo",defaultValue = "1") Long pageNo,
            @RequestParam(value = "pageSize",defaultValue = "10")Long pageSize){
        JsonResponse<Page<Operation>> json = new JsonResponse<>();
        Page<Operation> page = new Page<>();
        page.setSize(pageSize);
        page.setCurrent(pageNo);
        IPage<Operation> operationIPage = operationService.page(page, new QueryWrapper<Operation>());
        page.setRecords(operationIPage.getRecords());
        page.setTotal(operationIPage.getTotal());
        json.setCode(ResponseCode.SUCCESS.getCode());
        json.setData(page);
        return json;
    }

    @GetMapping(value="/check",name="校验操作")
    public JsonResponse check(Operation operation) {
        QueryWrapper<Operation> queryWrapper = new QueryWrapper<>();
        if(operation.getId()!=null){
            queryWrapper = queryWrapper.ne("id", operation.getId());
        }
        if (StringUtils.isNotEmpty(operation.getName())) {
            int count = operationService.count(queryWrapper.eq("name", operation.getName()));
            if (count > 0) {
                return JsonResponse.buildFail("名称已存在");
            }
        }
        if(StringUtils.isNotEmpty(operation.getCode()) ){
            int count = operationService.count(queryWrapper.eq("code", operation.getCode()));
            if (count > 0) {
                return JsonResponse.buildFail("编码已存在");
            }
        }
        if(StringUtils.isNotEmpty(operation.getUrl())){
            int count = operationService.count(queryWrapper.eq("url", operation.getUrl()));
            if (count > 0) {
                return JsonResponse.buildFail("URL已存在");
            }
        }
        return JsonResponse.buildSuccess();
    }


    @GetMapping(value="/url",name="获取所有url")
    public JsonResponse<List<Map<String,Object>>> getUrl(){

        Map<RequestMappingInfo, HandlerMethod> map = requestMappingHandlerMapping.getHandlerMethods();
        List<Map<String,Object>> list = new ArrayList<>();
        for(Map.Entry<RequestMappingInfo, HandlerMethod> en:map.entrySet()){
            Map<String,Object> m = new HashMap<>();
            RequestMappingInfo info = en.getKey();
            PatternsRequestCondition p = info.getPatternsCondition();
            for(String s:p.getPatterns()){
                m.put("name",info.getName());
                m.put("url", s.replaceAll("\\{.+\\}","*"));
                list.add(m);
            }
        }
        return JsonResponse.buildSuccess(list);
    }

}

