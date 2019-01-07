package com.jason.module.security.service.impl;

import com.jason.module.security.entity.Element;
import com.jason.module.security.dao.ElementMapper;
import com.jason.module.security.service.ElementService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 页面元素表 服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
@Service
public class ElementServiceImpl extends ServiceImpl<ElementMapper, Element> implements ElementService {

    @Override
    public List<Element> getElementList(List<Long> roleIdList) {
        return baseMapper.queryElementListByRole(roleIdList);
    }
}
