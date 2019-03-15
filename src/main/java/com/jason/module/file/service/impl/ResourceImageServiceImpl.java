package com.jason.module.file.service.impl;

import com.jason.common.enums.ResponseCode;
import com.jason.common.vo.JsonResponse;
import com.jason.module.file.entity.ResourceImage;
import com.jason.module.file.dao.ResourceImageMapper;
import com.jason.module.file.service.ResourceImageService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jason.module.file.vo.ImageVO;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FileUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-03-15
 */
@Service
@Slf4j
public class ResourceImageServiceImpl extends ServiceImpl<ResourceImageMapper, ResourceImage> implements ResourceImageService {

    @Override
    public JsonResponse<String> upload(MultipartFile file, ImageVO image) {
        try {
            FileUtils.copyToFile(file.getInputStream(),new File(image.getSavePath()));
            baseMapper.insert(image);
        } catch (IOException e) {
            log.error("上传文件异常",e);
            return JsonResponse.buildFail("上传文件异常");
        }
        return new JsonResponse<>(ResponseCode.SUCCESS,image.getPath());
    }
}
