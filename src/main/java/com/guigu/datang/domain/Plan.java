package com.guigu.datang.domain;

import java.io.Serializable;
import java.util.Date;

/**
 * @author datang
 * 计划表
 */
public class Plan implements Serializable {
    /** 计划ID*/
    private int planId;

    /** 计划名称*/
    private String planName;

    /** 计划状态*/
    private String status;

    /** 是否反馈*/
    private boolean feedback;

    /** 开始时间*/
    private Date beginDate;

    /** 结束时间*/
    private Date endDate;

    /** 任务详情*/
    private Task task;

    /** 反馈详情*/
    private String feedbackInfo;

    /** 计划详情*/
    private String planDesc;

    public Plan() {

    }

    public Plan(int planId, String planName, String status, boolean feedback, Date beginDate, Date endDate, Task task, String feedbackInfo, String planDesc) {
        this.planId = planId;
        this.planName = planName;
        this.status = status;
        this.feedback = feedback;
        this.beginDate = beginDate;
        this.endDate = endDate;
        this.task = task;
        this.feedbackInfo = feedbackInfo;
        this.planDesc = planDesc;
    }

    public int getPlanId() {
        return planId;
    }

    public void setPlanId(int planId) {
        this.planId = planId;
    }

    public String getPlanName() {
        return planName;
    }

    public void setPlanName(String planName) {
        this.planName = planName;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public boolean isFeedback() {
        return feedback;
    }

    public void setFeedback(boolean feedback) {
        this.feedback = feedback;
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

    public Task getTask() {
        return task;
    }

    public void setTask(Task task) {
        this.task = task;
    }

    public String getFeedbackInfo() {
        return feedbackInfo;
    }

    public void setFeedbackInfo(String feedbackInfo) {
        this.feedbackInfo = feedbackInfo;
    }

    public String getPlanDesc() {
        return planDesc;
    }

    public void setPlanDesc(String planDesc) {
        this.planDesc = planDesc;
    }

    @Override
    public String toString() {
        return "Plan{" +
                "planId='" + planId + '\'' +
                ", planName='" + planName + '\'' +
                ", status='" + status + '\'' +
                ", feedback=" + feedback +
                ", beginDate=" + beginDate +
                ", endDate=" + endDate +
                ", task=" + task +
                ", feedbackInfo='" + feedbackInfo + '\'' +
                ", planDesc='" + planDesc + '\'' +
                '}';
    }
}
