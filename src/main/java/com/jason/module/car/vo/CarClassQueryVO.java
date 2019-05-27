package com.jason.module.car.vo;

import com.jason.module.car.entity.CarClass;

import java.io.Serializable;

public class CarClassQueryVO extends CarClass implements Serializable {

    private String brand;

    private String letter;

    private String model;

    @Override
    public String getBrand() {
        return brand;
    }

    @Override
    public void setBrand(String brand) {
        this.brand = brand;
    }

    @Override
    public String getLetter() {
        return letter;
    }

    @Override
    public void setLetter(String letter) {
        this.letter = letter;
    }

    @Override
    public String getModel() {
        return model;
    }

    @Override
    public void setModel(String model) {
        this.model = model;
    }
}
