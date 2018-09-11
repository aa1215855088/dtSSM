package com.guigu.datang.domain;

import java.io.Serializable;

/**
 * @author 徐子楼
 * 角色类
 */
public class Role implements Serializable {


    private static final long serialVersionUID = -2211745586127129719L;

    /** 任务ID*/
    private int id;

    /** 任务名称*/
    private String name;

    /** 描述*/
    private String desc;


    public Role() {
    }

    public Role(int id, String name, String desc) {
        this.id = id;
        this.name = name;
        this.desc = desc;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", desc='" + desc + '\'' +
                '}';
    }
}
