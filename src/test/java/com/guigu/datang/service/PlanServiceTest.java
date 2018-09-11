package com.guigu.datang.service;

import com.guigu.core.test.BaseTest;
import com.guigu.datang.domain.Plan;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import static org.junit.Assert.*;

public class PlanServiceTest extends BaseTest {
    @Autowired
    private PlanService planService;
    @Test
    public void getPlanByPlanId() throws Exception {
        Plan planByPlanId = this.planService.getPlanByPlanId(6);
        System.out.println(planByPlanId);
    }

}