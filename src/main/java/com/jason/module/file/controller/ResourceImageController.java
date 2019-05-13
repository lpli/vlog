package com.jason.module.file.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.jason.common.vo.JsonResponse;
import com.jason.module.file.dto.ImageDTO;
import com.jason.module.file.entity.ImageGroup;
import com.jason.module.file.entity.ResourceImage;
import com.jason.module.file.service.ImageGroupService;
import com.jason.module.file.service.ResourceImageService;
import com.jason.module.file.util.FileTypeUtil;
import com.jason.module.file.vo.ImageCountVO;
import com.jason.module.file.vo.ImageVO;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.awt.*;
import java.io.IOException;
import java.util.*;
import java.util.List;

/**
 * <p>
 * 前端控制器
 * </p>
 *
 * @author lpli
 * @since 2019-03-15
 */
@RestController
@RequestMapping("/image")
@Slf4j
public class ResourceImageController {

    @Value("${app.img-path}")
    private String IMG_PATH;

    @Value("${app.img-server-path}")
    private String IMG_SERVER_PATH;

    @Value("${server.port}")
    private int PORT;

    @Value("#{'${app.img-type}'.split(',')}")
    private List<String> imgType;

    @Autowired
    private ResourceImageService resourceImageService;

    @Autowired
    private ImageGroupService imageGroupService;


    @PostMapping(value="/upload",name="图片上传")
    public JsonResponse<List<ImageVO>> upload(HttpServletRequest request, @RequestParam("file") List<MultipartFile> fileList,@RequestParam("groupId") Long groupId) {
        Date now = Calendar.getInstance().getTime();
        List<ImageDTO> list = new ArrayList<>();
        for (MultipartFile file : fileList) {
            long size = file.getSize();
            if (size == 0) {
                return JsonResponse.buildFail("文件为空");
            }
            String type = FileTypeUtil.getFileType(file);
            if (StringUtils.isEmpty(type)) {
                return JsonResponse.buildFail("未知文件类型");
            }
            if (!imgType.contains(type)) {
                return JsonResponse.buildFail("非法的图片格式(支持：" + StringUtils.join(imgType) + ")");
            }

            String id = UUID.randomUUID().toString();
            ImageDTO image = new ImageDTO();
            image.setName(file.getOriginalFilename());
            //访问相对路径
            String path = StringUtils.join(getDatePath(), "/", id, ".", type);
            image.setPath(StringUtils.join(StringUtils.join(IMG_SERVER_PATH, path)));
            image.setSavePath(StringUtils.join(IMG_PATH, path));
            image.setTitle(image.getName().substring(0,image.getName().lastIndexOf(".")));
            image.setId(id);
            image.setSize(size);
            image.setFile(file);
            image.setUploadTime(now);
            image.setGroupId(groupId);
            list.add(image);
        }
        JsonResponse<List<ImageVO>> response;
        try {
            response = resourceImageService.batchSave(list);
        } catch (IOException e) {
            log.error("文件上传异常", e);
            response = JsonResponse.buildFail("文件上传异常");
        }
        return response;
    }


    private String getDatePath() {
        return DateFormatUtils.format(Calendar.getInstance(), "YYYY/MM/dd");
    }

    /**
     * 图片分组统计
     *
     * @return
     */
    @GetMapping(value="/count",name="图片分组")
    public JsonResponse<List<ImageCountVO>> count() {
        List<ImageCountVO> list = resourceImageService.countList();
        return JsonResponse.buildSuccess(list);
    }

    @GetMapping(value="/all",name="全部图片")
    public JsonResponse<List<ImageVO>> all() {
        List<ResourceImage> list = resourceImageService.list();
        return JsonResponse.buildSuccess(getVOList(list));
    }

    @GetMapping(value="/{groupId}/list",name="分组图片列表")
    public JsonResponse<List<ImageVO>> list(@PathVariable("groupId") Long groupId) {
        List<ResourceImage> list = resourceImageService.list(new QueryWrapper<ResourceImage>().eq("group_id", groupId));
        return JsonResponse.buildSuccess(getVOList(list));
    }

    @PostMapping(value="/group",name="新增分组")
    public JsonResponse addGroup(@RequestBody ImageGroup imageGroup){
        int count = imageGroupService.count(new QueryWrapper<ImageGroup>().eq("name",imageGroup.getName()));
        if(count > 0){
            return JsonResponse.buildFail("分组名已存在");
        }
        imageGroupService.save(imageGroup);
        return JsonResponse.buildSuccess();
    }

    /**
     * 更新
     * @param id
     * @param imageVO
     * @return
     */
    @PutMapping(value="/{id}",name="修改图片")
    public JsonResponse update(@PathVariable("id")String id,@RequestBody ImageVO imageVO){
        if(StringUtils.isEmpty(imageVO.getTitle())){
            return JsonResponse.buildFail("标题为空");
        }
        ResourceImage resourceImage = new ResourceImage();
        resourceImage.setId(id);
        resourceImage.setTitle(imageVO.getTitle());
        resourceImageService.updateById(resourceImage);
        return JsonResponse.buildSuccess();
    }


    private List<ImageVO> getVOList(List<ResourceImage> list) {
        List<ImageVO> voList = new ArrayList<>(list.size());
        for (ResourceImage image : list) {
            ImageVO vo = new ImageVO();
            vo.setUrl(image.getPath());
            vo.setTitle(image.getTitle());
            vo.setId(image.getId());
            voList.add(vo);
        }
        return voList;
    }
}

