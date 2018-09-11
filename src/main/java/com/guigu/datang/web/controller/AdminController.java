package com.guigu.datang.web.controller;

import com.guigu.datang.domain.Employee;
import com.guigu.datang.service.EmployeeService;
import com.guigu.core.annotation.RoleAnnotation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/**
 * @author 徐子楼
 * 任务管理控制层
 */
@Controller
@RequestMapping(value = "/admin")
@RoleAnnotation(value = "admin")
public class AdminController {

    Logger logger = Logger.getLogger(String.valueOf(AdminController.class));

    @Autowired
    private EmployeeService employeeService;


    /**
     * 首页
     *
     * @return
     */
    @RequestMapping(value = "/welcome")
    public String welcome() {
        return "admin/welcome";
    }

    /**
     * 查看员工
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/useradmin")
    public String userAdmin(Model model) {
        //查询所有员工
        findAll(model);
        return "admin/useradmin";
    }

    /**
     * 添加员工页面
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "/personadd")

    public String personAdd(Model model) {

        return "admin/personadd";
    }


    /**
     * 添加员工操作
     *
     * @param map
     * @return
     * @throws UnsupportedEncodingException
     */

    @RequestMapping(value = "/personadd/add")
    public String add(@RequestParam Map<String, Object> map) throws UnsupportedEncodingException {


        employeeService.saveEmployee(map);

        return "redirect:/admin/useradmin";
    }

    /**
     * 员工管理
     *
     * @param model
     * @return
     * @throws UnsupportedEncodingException
     */

    @RequestMapping(value = "/empadmin")
    public String embalming(Model model) throws UnsupportedEncodingException {
        //查询所有员工
        findAll(model);
        return "admin/empadmin";
    }

    /**
     * 根据ID删除
     *
     * @param id
     * @return
     */

    @RequestMapping(value = "/empadmin/del")
    public String del(@RequestParam Integer id) {
        employeeService.deleteByEmployeeId(id);
        return "redirect:/admin/empadmin";
    }



    @RequestMapping(value = "/empdistribute")
    public String expatriate(Model model) {
        //查询所有员工
        findAll(model);
        return "admin/empdistribute";
    }

    /**
     * 修改页面
     *
     * @return
     */

    @RequestMapping(value = "/persondesc")
    public String persondesc(@RequestParam Integer id, Model model) {
        Employee employee = employeeService.getEmployeeById(id);
        List<Employee> employees = employeeService.listAll();
        model.addAttribute("employess", employees);
        model.addAttribute("employee", employee);
        return "admin/persondesc";
    }



    @RequestMapping(value = "/empdistribute/update")
    public String update(@RequestParam Map<String, Object> map) {
        employeeService.updateParentById(map);
        return "redirect:/admin/empdistribute";
    }


    /**
     * 查询员工
     *
     * @param model
     */
    private void findAll(Model model) {
        List<Employee> employeeList = employeeService.listAll();
        model.addAttribute("employeeList", employeeList);
    }
}

