package com.guigu.datang.dao;

import com.guigu.datang.domain.Employee;
import com.guigu.datang.vo.ManCheckperVO;
import org.apache.ibatis.annotations.Param;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

/**
 * @author 徐子楼
 */
public interface EmployeeDao {

    /**
     * 查询全部
     *
     * @return list<Employee>
     */
    List<Employee> listAll();

    /**
     * 根据ID查询
     *
     * @param id
     * @return employee
     */
    Employee getById(@Param("id") int id);

    /**
     * 添加用户
     *
     * @param map
     */
    void saveEmployee(Map<String, Object> map);

    /**
     * 条件查询
     *
     * @param map
     * @return
     */
    List<Employee> listByMap(Map<String, Object> map);

    /**
     * 条件查询
     *
     * @param object
     * @return list
     */
    List<Employee> listByObject(Object object);

    /**
     * 根据ID删除
     *
     * @param id
     */
    void deleteById(Serializable id);

    /**
     * 修改
     *
     * @param map
     */
    void updateByMap(Map<String, Object> map);

    /**
     * 根究ID修改parent
     *
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
     * 查出主管名字和Id
     * @return
     */
    List<Map<String,Object>> listManagerNameAndId();

}
