package com.jason.module.car.entity;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 汽车型号
 * </p>
 *
 * @author lpli
 * @since 2019-05-27
 */
public class CarModel extends Model<CarModel> {

    private static final long serialVersionUID = 1L;

    /**
     * 制造商
     */
    private String company;

    /**
     * 型号
     */
    private String model;

    /**
     * 品牌
     */
    private String brand;

    /**
     * 字母
     */
    private String letter;


    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getLetter() {
        return letter;
    }

    public void setLetter(String letter) {
        this.letter = letter;
    }

    @Override
    protected Serializable pkVal() {
        return this.model;
    }

    @Override
    public String toString() {
        return "CarModel{" +
        "company=" + company +
        ", model=" + model +
        ", brand=" + brand +
        ", letter=" + letter +
        "}";
    }
}
