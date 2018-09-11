package com.guigu.core.util;

import com.guigu.datang.service.EmployeeService;
import com.guigu.datang.service.PlanService;
import com.guigu.datang.service.RoleService;
import com.guigu.datang.service.TaskService;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


/**
 * @author lenovo
 * 获取service工具类
 */

//告诉junit spring配置文件

public class ServiceUtil {
    @Autowired
    protected EmployeeService employeeService;
    @Autowired
    protected TaskService taskService;
    @Autowired
    protected RoleService roleService;
    @Autowired
    protected PlanService planService;
}
