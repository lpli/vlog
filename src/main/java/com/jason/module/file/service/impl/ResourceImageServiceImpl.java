package com.jason.module.file.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.common.vo.JsonResponse;
import com.jason.module.file.dto.ImageDTO;
import com.jason.module.file.entity.ImageGroup;
import com.jason.module.file.entity.ResourceImage;
import com.jason.module.file.dao.ResourceImageMapper;
import com.jason.module.file.service.ImageGroupService;
import com.jason.module.file.service.ResourceImageService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.jason.module.file.vo.ImageCountVO;
import com.jason.module.file.vo.ImageVO;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author lpli
 * @since 2019-05-11
 */
@Service
public class ResourceImageServiceImpl extends ServiceImpl<ResourceImageMapper, ResourceImage> implements ResourceImageService {

    @Autowired
    private ImageGroupService imageGroupService;

    @Override
    @Transactional
    public JsonResponse<List<ImageVO>> batchSave(List<ImageDTO> dtoList) throws IOException {
        List<ResourceImage> list = new ArrayList<>();
        List<ImageVO> voList = new ArrayList<>();
        for(ImageDTO dto:dtoList){
            ResourceImage image = new ResourceImage();
            image.setId(dto.getId());
            image.setName(dto.getName());
            image.setPath(dto.getPath());
            image.setSize(dto.getSize());
            image.setTitle(dto.getTitle());
            image.setUploadTime(dto.getUploadTime());
            image.setGroupId(dto.getGroupId());
            list.add(image);

            ImageVO vo = new ImageVO();
            vo.setTitle(image.getTitle());
            vo.setUrl(image.getPath());
            voList.add(vo);
            FileUtils.copyToFile(dto.getFile().getInputStream(),new File(dto.getSavePath()));
        }
        this.saveBatch(list);
        return JsonResponse.buildSuccess(voList);
    }

    @Override
    public List<ImageCountVO> countList() {
        List<ImageGroup> groupList = imageGroupService.list();
        List<ImageCountVO> voList = new ArrayList<>();
        ImageCountVO vo = new ImageCountVO();
        vo.setTotal(Long.valueOf(this.count()));
        vo.setGroupName("全部图片");
        vo.setGroupId(0L);
        voList.add(vo);
        for(ImageGroup imageGroup:groupList){
            int count = this.count(new QueryWrapper<ResourceImage>().eq("group_id",imageGroup.getId()));
            vo = new ImageCountVO();
            vo.setTotal(Long.valueOf(count));
            vo.setGroupId(imageGroup.getId());
            vo.setGroupName(imageGroup.getName());
            voList.add(vo);
        }
        return voList;
    }
}
