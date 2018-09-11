package com.guigu.datang.dao;

import com.guigu.datang.domain.Plan;

import java.util.List;
import java.util.Map;

/**
 * @author lenovo
 */
public interface PlanDao {

    /**
     * 根据任务ID查询计划个数
     *
     * @param id
     * @return
     */
    Integer getPlanCountByTaskId(Integer id);

    /**
     * 根据计划ID查询计划
     *
     * @param id
     * @return
     */
    Plan getPlanByPlanId(Integer id);

    /**
     * 根据任务ID删除计划
     *
     * @param id
     */
    void deleteById(Integer id);

    /**
     * 修改计划状态和反馈
     *
     * @param map
     */
    void updateStatusAndFeedback(Map<String, Object> map);

    /**
     * 添加计划
     *
     * @param map
     */
    void save(Map<String, Object> map);

    /**
     * 删除计划
     *
     * @param planId
     */
    void delete(Integer planId);

    /**
     * 有条件查询
     *
     * @param map
     * @return
     */
    List<Plan> find(Map<String, Object> map);
}
