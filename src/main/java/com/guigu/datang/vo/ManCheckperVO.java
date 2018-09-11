package com.guigu.datang.vo;

import java.io.Serializable;
import java.util.Date;

/**
 * @author lenovo
 * 查看员工数据显示
 */
public class ManCheckperVO implements Serializable {

    private static final long serialVersionUID = -5025915737723844366L;
    /** 员工ID*/
    private Integer id;
    /** 员工姓名*/
    private String name;
    /** 员工性别*/
    private String sex;
    /** 员工入职时间*/
    private Date enrollDate;
    /** 员工职位*/
    private String duty;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getEnrollDate() {
        return enrollDate;
    }

    public void setEnrollDate(Date enrollDate) {
        this.enrollDate = enrollDate;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }
}
