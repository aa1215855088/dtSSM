package com.guigu.datang.service.impl;

import com.guigu.datang.dao.TaskDao;
import com.guigu.datang.domain.Task;
import com.guigu.datang.service.TaskService;
import com.guigu.datang.vo.ManIntenDanceVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

/**
 * @author 徐子楼
 */
@Service
@Transactional
public class TaskServiceimpl implements TaskService {
    @Autowired
    private TaskDao taskDao;

    @Override
    public List<Task> listAll() {
        return this.taskDao.listAll();
    }


    @Override
    public List<ManIntenDanceVO> listIntenDanceVO() {

        return this.taskDao.listIntenDanceVO();
    }

    @Override
    public Task getTaskById(Integer id) {
        return this.taskDao.getTaskById(id);
    }

    @Override
    public void updateTaskStatusByTaskId(Integer taskId, String status) {
        this.taskDao.updateTaskStatusByTaskId(taskId,status);
    }

    @Override
    public void saveTask(Map<String, Object> map) {
        this.taskDao.save(map);
    }

    @Override
    public void deleteById(Integer id) {
        this.taskDao.deleteById(id);
    }

    @Override
    public void updateTaskByMap(Map<String, Object> map) {
        this.taskDao.updateTaskByMap(map);
    }
}
