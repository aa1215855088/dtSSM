package com.guigu.datang.dao;

import com.guigu.datang.domain.Role;
import com.guigu.core.test.BaseTest;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class RoleDaoTest extends BaseTest {

    @Autowired
    private RoleDao roleDao;

    @Test
    public void listAll() throws Exception {
        List<Role> roles = roleDao.listAll();
        for (Role role : roles) {
            System.out.println(role);
        }
    }

}