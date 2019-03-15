package com.jason.module.file.vo;

import com.jason.module.file.entity.ResourceImage;

/**
 * @Author liliping
 * @Date 2019/3/15
 **/
public class ImageVO extends ResourceImage {
    private String savePath;

    public String getSavePath() {
        return savePath;
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }
}
