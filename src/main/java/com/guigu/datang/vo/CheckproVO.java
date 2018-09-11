package com.guigu.datang.vo;

import java.io.Serializable;

/**
 * @author lenovo
 */
public class CheckproVO implements Serializable{
    private String name;
    private String value;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }
}
