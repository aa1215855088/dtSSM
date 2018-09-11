package com.guigu.datang.service;

import com.guigu.datang.domain.Role;

import java.util.List;

/**
 * @author lenovo
 */
public interface RoleService {

    /**
     * 查询全部权限
     * @return list
     */
    List<Role> listAll();
}
