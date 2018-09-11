package com.guigu.datang.vo;

import com.guigu.datang.domain.Plan;

import java.io.Serializable;

/**
 * 功能概述:查询计划VO
 *
 * @author lenovo
 */
public class FindPlanVO implements Serializable {

    private static final long serialVersionUID = -1768600536083933022L;
    private String planName;
    private String beginDate;
    private String endDate;
    private String status;
    private String feedback;

    public FindPlanVO() {
    }

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getPlanName() {
        return planName;
    }

    public void setPlanName(String planName) {
        this.planName = planName;
    }

    public String getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(String beginDate) {
        this.beginDate = beginDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }
}
