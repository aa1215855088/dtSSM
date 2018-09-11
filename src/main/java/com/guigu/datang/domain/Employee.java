package com.guigu.datang.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @author 徐子楼
 * 员工表
 */
public class Employee implements Serializable {

    private static final long serialVersionUID = -6267231519089940430L;
    /** 用户ID*/
    private int id;

    /** 用户名称*/
    private String name;

    /** 用户密*/
    private String password;

    /** 实名*/
    private String realName;

    /** 性别*/
    private String sex;

    /** 生日*/
    private Date birthday;

    /** 职务*/
    private String duty;

    /** 登记时间*/
    private Date enrollDate;

    /** 学历*/
    private String education;

    /** 主修*/
    private String major;

    /** 经验*/
    private String experience;

    /** 权限*/
    private Role roleId;

    /** 儿子*/
    private Employee employee;

    public Employee() {

    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", realName='" + realName + '\'' +
                ", sex='" + sex + '\'' +
                ", birthday=" + birthday +
                ", duty='" + duty + '\'' +
                ", enrollDate=" + enrollDate +
                ", education='" + education + '\'' +
                ", major='" + major + '\'' +
                ", experience='" + experience + '\'' +
                ", roleId=" + roleId +
                ", employee=" + employee +
                '}';
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public Date getEnrollDate() {
        return enrollDate;
    }

    public void setEnrollDate(Date enrollDate) {
        this.enrollDate = enrollDate;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getMajor() {
        return major;
    }

    public void setMajor(String major) {
        this.major = major;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public Role getRoleId() {
        return roleId;
    }

    public void setRoleId(Role roleId) {
        this.roleId = roleId;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public Employee(int id, String name, String password, String realName, String sex, Date birthday, String duty, Date enrollDate, String education, String major, String experience, Role roleId, Employee employee) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.realName = realName;
        this.sex = sex;
        this.birthday = birthday;
        this.duty = duty;
        this.enrollDate = enrollDate;
        this.education = education;
        this.major = major;
        this.experience = experience;
        this.roleId = roleId;
        this.employee = employee;
    }
}
