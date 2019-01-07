package com.jason.module.security.entity;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 页面元素表
 * </p>
 *
 * @author lpli
 * @since 2019-01-05
 */
public class Element extends Model<Element> {

    private static final long serialVersionUID = 1L;

    private Long id;

    /**
     * 名称
     */
    private String name;

    /**
     * 编码
     */
    private String code;

    private String html;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getHtml() {
        return html;
    }

    public void setHtml(String html) {
        this.html = html;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Element{" +
        "id=" + id +
        ", name=" + name +
        ", code=" + code +
        ", html=" + html +
        "}";
    }
}
