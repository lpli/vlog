package com.jason.module.security.service.impl;

import com.jason.module.security.entity.Operation;
import com.jason.module.security.dao.OperationMapper;
import com.jason.module.security.service.OperationService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 * 操作表 服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
@Service
public class OperationServiceImpl extends ServiceImpl<OperationMapper, Operation> implements OperationService {

    @Override
    public List<Operation> getOperationList(List<Long> roleIdList) {
        return baseMapper.queryOperationListByRole(roleIdList);
    }
}
