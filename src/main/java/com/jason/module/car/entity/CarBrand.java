package com.jason.module.car.entity;

import com.baomidou.mybatisplus.extension.activerecord.Model;
import java.io.Serializable;

/**
 * <p>
 * 汽车品牌
 * </p>
 *
 * @author lpli
 * @since 2019-05-27
 */
public class CarBrand extends Model<CarBrand> {

    private static final long serialVersionUID = 1L;

    /**
     * 品牌
     */
    private String brand;

    /**
     * 字母
     */
    private String letter;


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
        return this.brand;
    }

    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("{");
        sb.append("\"brand\":\"")
                .append(brand).append('\"');
        sb.append(",\"letter\":\"")
                .append(letter).append('\"');
        sb.append('}');
        return sb.toString();
    }
}
