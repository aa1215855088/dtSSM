package com.guigu.datang.service;

import com.guigu.core.test.BaseTest;
import com.guigu.datang.domain.Employee;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import java.util.Map;


public class EmployeeServiceTest extends BaseTest {



    @Autowired
    private EmployeeService employeeService;


    @Test
    public void logging() throws Exception {

    }

    @Test
    public void getEmployeeById() throws Exception {

        Employee employeeById = employeeService.getEmployeeById(6);
        System.out.println(employeeById);
    }

    @Test
    public void listManagerName() throws Exception {
        List<String> list = employeeService.listManagerName();
        System.out.println(list);
    }
    @Test
    public void listManagerNameAndId() throws Exception {
        List<Map<String,Object>> strings = employeeService.listManagerNameAndId();
        System.out.println(strings);
    }

}