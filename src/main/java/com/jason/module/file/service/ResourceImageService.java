package com.jason.module.file.service;

import com.jason.common.vo.JsonResponse;
import com.jason.module.file.entity.ResourceImage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.jason.module.file.vo.ImageVO;
import org.springframework.web.multipart.MultipartFile;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author lpli
 * @since 2019-03-15
 */
public interface ResourceImageService extends IService<ResourceImage> {

    JsonResponse<String> upload(MultipartFile file,ImageVO image);
}
