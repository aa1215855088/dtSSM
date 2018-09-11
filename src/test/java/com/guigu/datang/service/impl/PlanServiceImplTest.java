package com.guigu.datang.service.impl;

import com.guigu.core.test.BaseTest;
import com.guigu.datang.dao.PlanDao;
import com.guigu.datang.domain.Plan;
import com.guigu.datang.service.PlanService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class PlanServiceImplTest extends BaseTest {

    @Autowired
    private PlanService planService;

    @Test
    public void getPlanCountByTaskId() throws Exception {

        Integer planCountByTaskId = planService.getPlanCountByTaskId(13);
        System.out.println(planCountByTaskId);
    }

    @Test
    public void getPlanByPlanId() throws Exception {
        Plan planByPlanId = this.planService.getPlanByPlanId(6);
        System.out.println(planByPlanId);
    }

}