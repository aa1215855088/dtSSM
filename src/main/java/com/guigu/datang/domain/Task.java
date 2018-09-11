package com.guigu.datang.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @author lenovo
 * 任务类
 */
public class Task implements Serializable {

    private static final long serialVersionUID = 5197837096431964443L;

    /** 任务ID */
    private int id;

    /** 任务名称 */
    private String name;

    /** 开始时间 */
    private Date beginDate;

    /** 结束时间 */
    private Date endDate;

    /** 实际开始时间 */
    private Date realBeginDate;

    /** 实际结束时间 */
    private Date realEndDate;

    /** 状态 */
    private String status;

    /** 实施者  */
    private Employee implementorId;

    /** 分配人 */
    private Employee assignerId;

    /** 任务描述 */
    private String taskDesc;

    private List<Plan> plans;

    public Task() {

    }


    public Task(int id, String name, Date beginDate, Date endDate, Date realBeginDate, Date realEndDate, String status, Employee implementorId, Employee assignerId, String taskDesc, List<Plan> plans) {
        this.id = id;
        this.name = name;
        this.beginDate = beginDate;
        this.endDate = endDate;
        this.realBeginDate = realBeginDate;
        this.realEndDate = realEndDate;
        this.status = status;
        this.implementorId = implementorId;
        this.assignerId = assignerId;
        this.taskDesc = taskDesc;
        this.plans = plans;
    }

    @Override
    public String toString() {
        return "Task{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", beginDate=" + beginDate +
                ", endDate=" + endDate +
                ", realBeginDate=" + realBeginDate +
                ", realEndDate=" + realEndDate +
                ", status='" + status + '\'' +
                ", implementorId=" + implementorId +
                ", assignerId=" + assignerId +
                ", taskDesc='" + taskDesc + '\'' +
                ", plans=" + plans +
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

    public Date getRealBeginDate() {
        return realBeginDate;
    }

    public void setRealBeginDate(Date realBeginDate) {
        this.realBeginDate = realBeginDate;
    }

    public Date getRealEndDate() {
        return realEndDate;
    }

    public void setRealEndDate(Date realEndDate) {
        this.realEndDate = realEndDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Employee getImplementorId() {
        return implementorId;
    }

    public void setImplementorId(Employee implementorId) {
        this.implementorId = implementorId;
    }

    public Employee getAssignerId() {
        return assignerId;
    }

    public void setAssignerId(Employee assignerId) {
        this.assignerId = assignerId;
    }

    public String getTaskDesc() {
        return taskDesc;
    }

    public void setTaskDesc(String taskDesc) {
        this.taskDesc = taskDesc;
    }

    public List<Plan> getPlans() {
        return plans;
    }

    public void setPlans(List<Plan> plans) {
        this.plans = plans;
    }
}

