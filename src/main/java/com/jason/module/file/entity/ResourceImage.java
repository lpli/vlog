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
 * @since 2019-05-11
 */
public class ResourceImage extends Model<ResourceImage> {

    private static final long serialVersionUID = 1L;

    /**
     * 图片id
     */
    @TableId(value = "id", type = IdType.NONE)
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

    /**
     * 标题
     */
    private String title;

    /**
     * 组
     */
    private Long groupId;


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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Long getGroupId() {
        return groupId;
    }

    public void setGroupId(Long groupId) {
        this.groupId = groupId;
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
        ", title=" + title +
        ", groupId=" + groupId +
        "}";
    }
}
