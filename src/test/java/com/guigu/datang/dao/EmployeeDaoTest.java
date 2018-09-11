package com.guigu.datang.dao;

import com.guigu.datang.domain.Employee;
import com.guigu.core.test.BaseTest;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class EmployeeDaoTest extends BaseTest{
    @Autowired
    private EmployeeDao employeeDao;

    @Test
    public void listAll() throws Exception {
        List<Employee> employees = employeeDao.listAll();
        for (Employee employee : employees) {
            System.out.println(employee.getRoleId().getName());
        }
    }

    @Test
    public void getById() throws Exception {
        Employee byId = employeeDao.getById(8);
        System.out.println(byId);
    }

    @Test
    public void saveEmployee() throws Exception {

    }

    @Test
    public void listByMap() throws Exception {
        System.out.println(employeeDao.getById(6));

    }

}