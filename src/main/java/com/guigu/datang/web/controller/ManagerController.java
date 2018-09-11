package com.guigu.datang.web.controller;

import com.guigu.core.annotation.RoleAnnotation;
import com.guigu.core.exception.MyException;
import com.guigu.core.util.ServiceUtil;
import com.guigu.datang.domain.Employee;
import com.guigu.datang.domain.Plan;
import com.guigu.datang.domain.Task;
import com.guigu.datang.vo.ManCheckperVO;
import com.guigu.datang.vo.ManIntenDanceVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/**
 * @author 徐子楼
 */
@Controller
@RequestMapping(value = "/man")
@RoleAnnotation(value = "manager")
public class ManagerController extends ServiceUtil {

    private Logger logger = Logger.getLogger(String.valueOf(ManagerController.class));


    /**
     * 总管操作首页
     *
     * @return person/welcome
     */
    @RequestMapping(value = "/welcome")
    public String welcome() {

        return "manager/welcome";
    }

    /**
     * 制定任务
     *
     * @return
     */
    @RequestMapping(value = "/task")
    public String task(Model model) {
        List<Map<String, Object>> managerNameAndId = employeeService.listManagerNameAndId();
        model.addAttribute("managerNameAndId", managerNameAndId);
        return "manager/task";
    }

    /**
     * 查看任务
     *
     * @return
     */
    @RequestMapping(value = "/taskview")
    public String taskView(Model model) {
        List<Task> taskList = taskService.listAll();
        model.addAttribute("taskList", taskList);
        return "manager/taskview";
    }

    /**
     * 调整任务页面
     *
     * @return
     */
    @RequestMapping(value = "/taskundone")
    public String tarkenton(Model model) {
        List<ManIntenDanceVO> manIntenDanceVOS = taskService.listIntenDanceVO();
        model.addAttribute("taskList", manIntenDanceVOS);
        return "manager/taskundone";
    }

    /**
     * 跟踪任务页面
     *
     * @return
     */
    @RequestMapping(value = "/intendance")
    public String intendance(Model model) {
        List<ManIntenDanceVO> manIntenDanceVOS = taskService.listIntenDanceVO();
        model.addAttribute("taskList", manIntenDanceVOS);
        return "manager/intendance";
    }

    /**
     * 查看人员
     *
     * @return
     */
    @RequestMapping(value = "/checkper")
    public String checkper(Model model) {

        List<ManCheckperVO> manCheckperVOList = employeeService.listPerson();
        model.addAttribute("personList", manCheckperVOList);
        return "manager/checkper";
    }

    @RequestMapping(value = "personinfo")
    public String personinfo(@RequestParam Integer id, Model model) throws MyException {
        if (id == null) {
            throw new MyException("id为空");
        }
        Employee employeeById = employeeService.getEmployeeById(id);
        model.addAttribute("employee", employeeById);
        return "manager/personinfo";
    }

    /**
     * 任务详情页面
     *
     * @return
     */
    @RequestMapping(value = "programinten")
    public String programinten(@RequestParam Integer id, Model model) throws MyException {
        if (id == null) {
            throw new MyException("id为空");
        }
        Task task = taskService.getTaskById(id);
        model.addAttribute("task", task);
        return "manager/programinten";
    }

    @RequestMapping(value = "programinten/update")
    public String updateTaskStatus(@RequestParam Integer taskId, @RequestParam String status) throws MyException {
        if (taskId == null) {
            throw new MyException("id为空");
        }
        if (StringUtils.isEmpty(status)) {
            throw new MyException("状态为空");
        }
        this.taskService.updateTaskStatusByTaskId(taskId, status);

        return "redirect:/man/intendance";
    }

    /**
     * 添加任务页面
     *
     * @param map
     * @return
     */
    @RequestMapping(value = "task/add")
    public String taskAdd(@RequestParam Map<String, Object> map) {
        taskService.saveTask(map);
        return "redirect:/man/taskview";
    }

    /**
     * 任务详情页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "task/taskparticular")
    public String taskParticular(@RequestParam("taskId") Integer id, Model model) {
        Task taskById = taskService.getTaskById(id);
        model.addAttribute("task", taskById);
        return "manager/taskparticular";
    }


    /**
     * 计划详情页面
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "plan/program")
    public String program(@RequestParam("planId") Integer id, Model model) {
        Plan plan = planService.getPlanByPlanId(id);
        model.addAttribute("plan", plan);
        return "manager/program";
    }

    /**
     * 删除任务
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "task/delete")
    public String delete(@RequestParam("taskId") Integer[] ids) {

        for (Integer id : ids) {
            //首先删除该任务下的计划
            planService.deleteById(id);
            //在删除任务
            taskService.deleteById(id);
        }
        return "redirect:/man/taskundone";
    }

    /**
     * 修改任务UI
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "adjust")
    public String adjust(@RequestParam("taskId") Integer id, Model model) {
        Task taskById = taskService.getTaskById(id);
        List<ManCheckperVO> manCheckperVOList = employeeService.listPerson();
        model.addAttribute("personList", manCheckperVOList);
        model.addAttribute("task", taskById);
        return "manager/adjust";
    }

    /**
     * 修改任务
     * @param map
     * @return
     */
    @RequestMapping(value = "task/update")
    public String update(@RequestParam Map<String,Object> map){
        taskService.updateTaskByMap(map);
        return "redirect:/man/taskundone";
    }
}
