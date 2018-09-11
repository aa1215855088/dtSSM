package com.guigu.datang.web.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.guigu.core.util.ServiceUtil;
import com.guigu.datang.domain.Plan;
import com.guigu.datang.domain.Task;
import com.guigu.datang.service.TaskService;
import com.guigu.core.annotation.RoleAnnotation;
import com.guigu.datang.vo.CheckproVO;
import com.guigu.datang.vo.FindPlanVO;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.logging.Logger;
import java.util.stream.Collectors;

/**
 * @author lenovo
 */
@Controller
@RequestMapping(value = "person")
@RoleAnnotation(value = "person")
public class PersonController extends ServiceUtil {

    private Logger logger = Logger.getLogger(String.valueOf(AdminController.class));

    @Autowired
    private TaskService taskService;

    /**
     * 员工操作首页
     *
     * @return person/welcome
     */
    @RequestMapping(value = "/welcome")
    @RoleAnnotation(value = "person")
    public String welcome() {
        return "person/welcome";
    }


    /**
     * 查看计划
     *
     * @return
     */
    @RequestMapping(value = "task")
    public String task(Model model) {
        List<Task> tasks = taskService.listAll();
        model.addAttribute("tasks", tasks);
        return "person/task";
    }

    /**
     * 计划管理
     *
     * @return
     */
    @RequestMapping(value = "/taskview")
    public String taskView(@RequestParam("taskId") Integer id, Model model) {
        Task taskById = taskService.getTaskById(id);
        model.addAttribute("task", taskById);
        return "person/taskview";
    }

    @RequestMapping(value = "newpro")
    public String newpro(@RequestParam("taskId") Integer id, Model model) {
        List<Task> taskList = taskService.listAll();
        model.addAttribute("taskList", taskList);
        model.addAttribute("taskId", id);
        return "person/newpro";
    }

    @RequestMapping(value = "feedback")
    public String feedback(@RequestParam("planId") Integer id, Model model, @RequestParam("taskId") Integer taskId) {
        Plan planByPlanId = planService.getPlanByPlanId(id);
        model.addAttribute("plan", planByPlanId);
        model.addAttribute("taskId", taskId);
        return "person/feedback";
    }


    @RequestMapping(value = "checkpro")
    public String checkpro(Model model) {
        List<Task> taskList = taskService.listAll();
        model.addAttribute("taskList", taskList);
        return "person/checkpro";
    }

    /**
     * 修改计划
     *
     * @param map
     * @return
     */
    @RequestMapping(value = "plan/update")
    public String update(@RequestParam Map<String, Object> map) {
        planService.updateStatusAndFeedback(map);
        return "redirect:/person/taskview?taskId=" + map.get("taskId");
    }

    /**
     * 添加计划
     *
     * @param map
     * @return
     */
    @RequestMapping(value = "plan/save")
    public String save(@RequestParam Map<String, Object> map) {
        planService.savePlan(map);
        return "redirect:/person/taskview?taskId=" + map.get("taskId");
    }

    /**
     * 删除计划
     *
     * @param planIds
     * @param taskId
     * @return
     */
    @RequestMapping(value = "plan/delete")
    public String delete(@RequestParam("planId") Integer[] planIds, @RequestParam("taskId") Integer taskId) {
        for (Integer planId : planIds) {
            planService.deleteByPlanIdAndTaskId(planId, taskId);
        }
        return "redirect:/person/taskview?taskId=" + taskId;
    }

    /**
     * 有条件查询
     *
     * @param
     * @return
     */
    @RequestMapping(value = "findPlan")
    @ResponseBody
    public List<FindPlanVO> select(@RequestBody String taskId) {
        List<CheckproVO> objects = JSON.parseArray(taskId, CheckproVO.class);
        Map<String, Object> findMap = objects.stream().collect(Collectors.toMap(CheckproVO::getName, CheckproVO::getValue));
        List<FindPlanVO> planList = planService.findPlanVOByMap(findMap);
        return planList;
    }

}
