package com.guigu.datang.vo;

import com.guigu.datang.domain.Plan;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @author lenovo
 */
public class ManIntenDanceVO implements Serializable{


    private static final long serialVersionUID = 596777179114217743L;
    /** 任务ID*/
    private Integer id;
    /** 任务名称*/
    private String taskName;
    /** 实施人*/
    private String employeeName;
    /** 开始时间*/
    private Date beginDate;
    /** 结束时间*/
    private Date endDate;

    /** 任务状态*/
    private String status;



    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public Date getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(Date beginDate) {
        this.beginDate = beginDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }


}
