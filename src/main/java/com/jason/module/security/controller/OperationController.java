package com.jason.module.security.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.security.entity.Operation;
import com.jason.module.security.service.OperationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
    private OperationService operationService;

    @PostMapping("/create")
    public JsonResponse create(@RequestBody Operation operation){
        operationService.save(operation);
        return JsonResponse.buildSuccess();
    }

    @DeleteMapping("/{id}/delete")
    public JsonResponse delete(@PathVariable("id") Long id){
        operationService.remove(new QueryWrapper<Operation>().eq("id",id));
        return JsonResponse.buildSuccess();
    }

    @PutMapping("/update")
    public JsonResponse update(@RequestBody Operation operation){
        operationService.updateById(operation);
        return JsonResponse.buildSuccess();
    }

    @GetMapping("/pageList")
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
}

