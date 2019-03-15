package com.jason.module.file.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.time.LocalDateTime;
import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 
 * </p>
 *
 * @author lpli
 * @since 2019-03-15
 */
public class ResourceImage extends Model<ResourceImage> {

    private static final long serialVersionUID = 1L;

    /**
     * 图片id
     */
    @TableId(type=IdType.INPUT)
    private String id;

    /**
     * 文件名
     */
    private String name;

    /**
     * 图片路径
     */
    private String path;

    /**
     * 大小(字节数)
     */
    private Long size;

    /**
     * 上传时间
     */
    private Date uploadTime;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Long getSize() {
        return size;
    }

    public void setSize(Long size) {
        this.size = size;
    }

    public Date getUploadTime() {
        return uploadTime;
    }

    public void setUploadTime(Date uploadTime) {
        this.uploadTime = uploadTime;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "ResourceImage{" +
        "id=" + id +
        ", name=" + name +
        ", path=" + path +
        ", size=" + size +
        ", uploadTime=" + uploadTime +
        "}";
    }
}
