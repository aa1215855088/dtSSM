package com.guigu.datang.web.controller;


import com.guigu.core.annotation.RoleAnnotation;
import com.guigu.datang.domain.Employee;
import com.guigu.datang.domain.Role;
import com.guigu.datang.service.EmployeeService;
import com.guigu.datang.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.logging.Logger;

/**
 * @author 徐子楼
 * 登录页面
 */
@Controller
@RoleAnnotation(value = "admin")
public class LoginController {

    private final static String ADMAIN = "系统管理员";
    private final static String PERSON = "普通员工";
    private final static String MANAGER = "主管";

    private Logger logger = Logger.getLogger(String.valueOf(LoginController.class));

    @Autowired
    private RoleService roleService;

    @Autowired
    private EmployeeService employeeService;


    /**
     * 登录页面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(Model model) {
        List<Role> roles = roleService.listAll();
        model.addAttribute("roles", roles);
        return "login";
    }


    /**
     * 登录验证
     *
     * @param request
     * @param session
     * @return 首页
     */
    @RequestMapping(value = "/logging", method = RequestMethod.GET)
    public String logging(HttpServletRequest request, HttpSession session) {



        //获取账号
        String username = request.getParameter("username");
        //获取密码
        String password = request.getParameter("password");
        //获取权限
        String roleId=request.getParameter("roleId");
        if(StringUtils.isEmpty(username)){
            return "redirect:login";
        }
        if(StringUtils.isEmpty(password)){
            return "redirect:login";
        }
        if(StringUtils.isEmpty(roleId)){
            return "redirect:login";
        }
        Employee employee1 = this.employeeService.logging(username, password, Integer.valueOf(roleId));

        if (employee1 != null) {
            session.setAttribute("user", employee1.getName() + "-" + employee1.getRoleId().getName());
            //判断用户操作权限
            if (employee1.getRoleId().getDesc().equals(ADMAIN)) {
                return "redirect:admin/welcome";
            }
            if (employee1.getRoleId().getDesc().equals(MANAGER)) {
                return "redirect:man/welcome";
            }
            if (employee1.getRoleId().getDesc().equals(PERSON)) {
                return "redirect:person/welcome";
            }
        }

        return "redirect:login";
    }

    /**
     * 退出登录
     *
     * @return login
     */
    @RequestMapping(value = "/logOut")
    public String logOut(HttpSession session) {

        /**
         * 清除用户登录信息
         */
        session.removeAttribute("user");

        return "redirect:login";
    }

}
