package com.jason.module.security.service;

import com.jason.module.security.entity.Element;
import com.baomidou.mybatisplus.extension.service.IService;

import java.util.List;

/**
 * <p>
 * 页面元素表 服务类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public interface ElementService extends IService<Element> {

    List<Element> getElementList(List<Long> roleIdList);
}
