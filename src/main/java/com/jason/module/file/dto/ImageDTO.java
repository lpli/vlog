package com.jason.module.file.dto;

import com.jason.module.file.entity.ResourceImage;
import org.springframework.web.multipart.MultipartFile;

/**
 * @Author liliping
 * @Date 2019/3/15
 **/
public class ImageDTO extends ResourceImage {
    private String savePath;

    private MultipartFile file;

    public String getSavePath() {
        return savePath;
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }

    public MultipartFile getFile() {
        return file;
    }

    public void setFile(MultipartFile file) {
        this.file = file;
    }


}
