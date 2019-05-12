package com.jason.module.file.service;

import com.jason.common.vo.JsonResponse;
import com.jason.module.file.dto.ImageDTO;
import com.jason.module.file.entity.ResourceImage;
import com.baomidou.mybatisplus.extension.service.IService;
import com.jason.module.file.vo.ImageCountVO;
import com.jason.module.file.vo.ImageVO;

import java.io.IOException;
import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author lpli
  @since 2019-05-11
 */
public interface ResourceImageService extends IService<ResourceImage> {

    /**
     * 批量保存图片
     * @param dtoList
     * @return
     */
     JsonResponse<List<ImageVO>> batchSave(List<ImageDTO> dtoList) throws IOException;

     List<ImageCountVO> countList();
}
