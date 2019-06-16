package com.jason.module.security.controller;

import com.jason.common.vo.JsonResponse;
import com.jason.module.security.comp.PermissionIgnore;
import org.apache.commons.collections.SetUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.mvc.condition.PatternsRequestCondition;
import org.springframework.web.servlet.mvc.method.RequestMappingInfo;
import org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerMapping;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class IndexController {

    @Autowired
    private RequestMappingHandlerMapping requestMappingHandlerMapping;

    //    /**
//     * 登录页面
//     * @return
//     */
//    @GetMapping(value = "/login",produces = "text/html")
//    public String loginPage(){
//        return "login";
//    }
//
//
//
//
//    /**
//     * 主页
//     * @return
//     */
//    @RequestMapping(value={"/index","/"},produces = "text/html")
//    public String index(){
//        return "index";
//    }
//
//    @RequestMapping(value={"/403"},produces = "text/html")
//    public String forbidden(){
//        return "forbidden";
//    }
    @GetMapping(value = "/apiList", name = "api列表")
    @PermissionIgnore
    public JsonResponse<List<Map<String, Object>>> getUrl() {
        Map<RequestMappingInfo, HandlerMethod> map = requestMappingHandlerMapping.getHandlerMethods();
        List<Map<String, Object>> list = new ArrayList<>();
        for (Map.Entry<RequestMappingInfo, HandlerMethod> en : map.entrySet()) {
            RequestMappingInfo info = en.getKey();
            Method method = en.getValue().getMethod();
            Annotation annotation = method.getAnnotation(PermissionIgnore.class);
            if(annotation != null){
                continue;
            }
            Map<String, Object> m = new HashMap<>();
            PatternsRequestCondition p = info.getPatternsCondition();
            for (String s : p.getPatterns()) {
                m.put("name", info.getName());
                if (!info.getMethodsCondition().getMethods().isEmpty()) {
                    m.put("method", ((RequestMethod) info.getMethodsCondition().getMethods().toArray()[0]).name().toUpperCase());
                }
                m.put("url", s.replaceAll("\\{.+\\}", "*"));
                list.add(m);
            }
        }
        return JsonResponse.buildSuccess(list);
    }
}
