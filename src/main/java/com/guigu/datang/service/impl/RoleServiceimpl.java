package com.guigu.datang.service.impl;

import com.guigu.datang.dao.RoleDao;
import com.guigu.datang.domain.Role;
import com.guigu.datang.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author lenovo
 */
@Service
@Transactional
public class RoleServiceimpl implements RoleService {

    @Autowired
    private RoleDao roleDao;

    @Override
    public List<Role> listAll() {
        return this.roleDao.listAll();
    }
}
