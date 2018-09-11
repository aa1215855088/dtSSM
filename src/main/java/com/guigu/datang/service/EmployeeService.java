package com.guigu.datang.service;

import com.guigu.datang.domain.Employee;
import com.guigu.datang.vo.ManCheckperVO;

import java.util.List;
import java.util.Map;

/**
 * @author lenovo
 */
public interface EmployeeService {

    /**
     * 登录判断
     * @param username
     * @param password
     * @param roleId
     * @return yes？no
     */
    Employee logging(String username,String password ,int roleId);

    /**
     * 查询所有用户
     * @return
     */
    List<Employee> listAll();

    /**
     * 添加员工
     * @param map
     */
    void saveEmployee(Map<String,Object> map);


    /**
     * 根据ID删除
     * @param id
     */
    void deleteByEmployeeId(Integer id);

    /**
     * 修改
     * @param map
     */
    void update(Map<String, Object> map);

    /**
     * 跟据ID查询
     * @param id
     * @return
     */
    Employee getEmployeeById(Integer id);

    /**
     * 跟据ID分配人员
     * @param map
     */
    void updateParentById(Map<String, Object> map);

    /**
     * 查询员工
     * @return
     */
    List<ManCheckperVO> listPerson();

    /**
     * 查询主管名字
     * @return
     */
    List<String> listManagerName();

    /**
     * 查出主管姓名和ID
     * @return
     */
    List<Map<String,Object>> listManagerNameAndId();

}
