package com.jason.module.security.dao;

import com.jason.module.security.entity.Element;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 * 页面元素表 Mapper 接口
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public interface ElementMapper extends BaseMapper<Element> {

    List<Element>  queryElementListByRole(List<Long> roleIdList);
}
