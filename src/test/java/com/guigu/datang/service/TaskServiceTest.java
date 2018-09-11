package com.guigu.datang.service;

import com.guigu.datang.dao.TaskDao;
import com.guigu.core.test.BaseTest;
import com.guigu.datang.domain.Task;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


public class TaskServiceTest extends BaseTest {


    @Autowired
    private TaskDao taskDao;

    @Test
    public void listAll() throws Exception {

    }
    @Test
    public void getTaskById() throws Exception {
        Task taskById = taskDao.getTaskById(1);
        taskById.getPlans().stream().forEach(plan -> {
            if(plan.getStatus().equals("已完成")){
                System.out.println("该计划已完成"+plan.getPlanName());
            }
        });
    }
}