package com.guigu.datang.dao;

import com.guigu.datang.domain.Role;

import java.util.List;

/**
 * @author 徐子楼
 */
public interface RoleDao {

    /**
     * 查询所有权限
     * @return List<Role>
     */
    List<Role> listAll();
}
