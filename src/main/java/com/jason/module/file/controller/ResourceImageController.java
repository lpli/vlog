package com.jason.module.file.controller;


import com.jason.common.vo.JsonResponse;
import com.jason.module.file.entity.ResourceImage;
import com.jason.module.file.service.ResourceImageService;
import com.jason.module.file.util.FileTypeUtil;
import com.jason.module.file.vo.ImageVO;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.apache.commons.lang3.time.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author lpli
 * @since 2019-03-15
 */
@RestController
@RequestMapping("/image")
public class ResourceImageController {

    @Value("${app.img-path}")
    private String IMG_PATH;

    @Value("${app.img-server}")
    private String IMG_SERVER;

    @Value("#{'${app.img-type}'.split(',')}")
    private List<String> imgType;

    @Autowired
    private ResourceImageService resourceImageService;

    @PostMapping("/upload")
    public JsonResponse<String> upload(@RequestParam("file") MultipartFile file){
        long size = file.getSize();
        if(size == 0){
            return JsonResponse.buildFail("文件为空");
        }
        String type = FileTypeUtil.getFileType(file);
        if(StringUtils.isEmpty(type)){
            return JsonResponse.buildFail("未知文件类型");
        }
        if(!imgType.contains(type)){
            return JsonResponse.buildFail("非法的图片格式(支持："+StringUtils.join(imgType)+")");
        }
        String id = UUID.randomUUID().toString();
        ImageVO image = new ImageVO();
        image.setName(StringUtils.join(id,".",type));
        //访问相对路径
        String path = StringUtils.join(getDatePath(),"/",image.getName());
        image.setPath(path);
        image.setSavePath(StringUtils.join(IMG_PATH,path));
        image.setId(id);
        image.setSize(size);
        image.setUploadTime(Calendar.getInstance().getTime());
        JsonResponse<String> response =  resourceImageService.upload(file,image);
        response.setData(StringUtils.join(IMG_SERVER,response.getData()));
        return response;
    }

    private String getDatePath(){
        return DateFormatUtils.format(Calendar.getInstance(),"YYYY/MM/dd");
    }
}

