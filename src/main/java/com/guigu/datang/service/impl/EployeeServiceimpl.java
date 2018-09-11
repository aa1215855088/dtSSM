package com.guigu.datang.service.impl;

import com.guigu.datang.dao.EmployeeDao;
import com.guigu.datang.domain.Employee;
import com.guigu.datang.service.EmployeeService;
import com.guigu.datang.vo.ManCheckperVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.*;

/**
 * @author lenovo
 */
@Service
@Transactional
public class EployeeServiceimpl implements EmployeeService {

    @Autowired
    private EmployeeDao employeeDao;

    @Override
    public Employee logging(String username, String password, int roleId) {

        if (StringUtils.isEmpty(username)) {
            throw new IllegalArgumentException("");
        }
        if (StringUtils.isEmpty(password)) {
            throw new IllegalArgumentException("");
        }
        if (roleId == 0) {
            throw new IllegalArgumentException("");
        }


        Map<String, Object> map = new HashMap<String, Object>();

        map.put("username", username);
        List<Employee> employees = this.employeeDao.listByMap(map);
        /** 判断是否有该用户*/
        if (employees != null && employees.size() != 0) {

            /** 判断用户密码是否匹配*/
            if (employees.get(0).getPassword().equals(password)) {
                /** 判断用户权限是否匹配*/
                if (employees.get(0).getRoleId().getId() == roleId) {

                    return employees.get(0);
                }
            }

        }
        return null;
    }

    @Override
    public List<Employee> listAll() {
        return this.employeeDao.listAll();
    }

    @Override
    public void saveEmployee(Map<String, Object> map) {
        this.employeeDao.saveEmployee(map);
    }

    @Override
    public void deleteByEmployeeId(Integer id) {
        this.employeeDao.deleteById(id);
    }

    @Override
    public void update(Map<String, Object> map) {
        this.employeeDao.updateByMap(map);
    }

    @Override
    public Employee getEmployeeById(Integer id) {


        return this.employeeDao.getById(id);
    }

    @Override
    public void updateParentById(Map<String, Object> map) {


        this.employeeDao.updateParentById(map);
    }

    @Override
    public List<ManCheckperVO> listPerson() {

        return this.employeeDao.listPerson();
    }

    @Override
    public List<String> listManagerName() {
        return this.employeeDao.listManagerName();
    }

    @Override
    public List<Map<String, Object>> listManagerNameAndId() {
        return this.employeeDao.listManagerNameAndId();
    }
}
