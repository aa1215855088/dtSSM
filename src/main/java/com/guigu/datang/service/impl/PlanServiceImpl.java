package com.guigu.datang.service.impl;

import com.guigu.datang.dao.PlanDao;
import com.guigu.datang.domain.Plan;
import com.guigu.datang.service.PlanService;
import com.guigu.datang.vo.FindPlanVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @author lenovo
 */
@Service
public class PlanServiceImpl implements PlanService {
    @Autowired
    private PlanDao planDao;

    @Override
    public Integer getPlanCountByTaskId(Integer id) {

        return this.planDao.getPlanCountByTaskId(id);
    }

    @Override
    public Plan getPlanByPlanId(Integer id) {
        return this.planDao.getPlanByPlanId(id);
    }

    @Override
    public void deleteById(Integer id) {
        this.planDao.deleteById(id);
    }

    @Override
    public void updateStatusAndFeedback(Map<String, Object> map) {
        this.planDao.updateStatusAndFeedback(map);
    }

    @Override
    public void savePlan(Map<String, Object> map) {
        this.planDao.save(map);
    }

    @Override
    public void deleteByPlanIdAndTaskId(Integer planId, Integer taskId) {
        this.planDao.delete(planId);
    }

    @Override
    public List<Plan> listPlanByMap(Map<String, Object> map) {
        return this.planDao.find(map);
    }

    @Override
    public List<FindPlanVO> findPlanVOByMap(Map<String, Object> findMap) {
        List<FindPlanVO> findPlanVOList = new ArrayList<>();
        List<Plan> planList = this.planDao.find(findMap);
        FindPlanVO findPlanVO = null;
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        for (Plan plan : planList) {
            findPlanVO = new FindPlanVO();
            findPlanVO.setPlanName(plan.getPlanName());
            findPlanVO.setStatus(plan.getStatus());
            findPlanVO.setBeginDate(format.format(plan.getBeginDate()));
            findPlanVO.setEndDate(format.format(plan.getEndDate()));
            if (plan.isFeedback()) {
                findPlanVO.setFeedback("已反馈");
            } else {
                findPlanVO.setFeedback("未反馈");
            }
            findPlanVOList.add(findPlanVO);
        }
        return findPlanVOList;
    }
}
