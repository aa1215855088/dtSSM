package com.guigu.datang.service.impl;

import com.guigu.datang.domain.Task;
import com.guigu.datang.service.TaskService;
import com.guigu.core.test.BaseTest;
import com.guigu.datang.vo.ManIntenDanceVO;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class TaskServiceimplTest extends BaseTest {


    @Autowired
    private TaskService taskService;

    @Test
    public void listAll() throws Exception {
        List<Task> tasks = taskService.listAll();
        for (Task task : tasks) {
            System.out.println(task.getPlans()
            );
        }
    }
    @Test
    public void listIntenDanceVO() throws Exception {
        List<ManIntenDanceVO> manIntenDanceVOS = taskService.listIntenDanceVO();
        for (ManIntenDanceVO manIntenDanceVO : manIntenDanceVOS) {
            System.out.println(manIntenDanceVO);
        }

    }
}