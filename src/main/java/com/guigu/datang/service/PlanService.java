package com.guigu.datang.service;

import com.guigu.datang.domain.Plan;
import com.guigu.datang.vo.FindPlanVO;

import java.util.List;
import java.util.Map;

/**
 * @author lenovo
 */
public interface PlanService {

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
     * @param map
     */
    void updateStatusAndFeedback(Map<String, Object> map);

    /**
     * 添加计划
     * @param map
     */
    void savePlan(Map<String, Object> map);

    /**
     * 根据计划和任务删除该计划
     * @param planId
     * @param taskId
     */
    void deleteByPlanIdAndTaskId(Integer planId, Integer taskId);

    /**
     * 查询计划
     * @param map
     * @return
     */
    List<Plan> listPlanByMap(Map<String, Object> map);

    /**
     * 查询VO
     * @param findMap
     * @return
     */
    List<FindPlanVO> findPlanVOByMap(Map<String, Object> findMap);
}
