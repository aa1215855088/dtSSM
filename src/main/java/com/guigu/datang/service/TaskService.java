package com.guigu.datang.service;

import com.guigu.datang.domain.Task;
import com.guigu.datang.vo.ManIntenDanceVO;

import java.util.List;
import java.util.Map;

/**
 * @author lenovo
 */

public interface TaskService {

    /**
     * 查询全部任务
     *
     * @return list
     */
    List<Task> listAll();


    /**
     * 查询任务页面所需要的数据
     *
     * @return
     */
    List<ManIntenDanceVO> listIntenDanceVO();

    /**
     * 根据ID查出任务详情
     * @param id
     * @return
     */
    Task getTaskById(Integer id);

    /**
     * 跟据ID修改状态
     * @param taskId
     * @param status
     */
    void updateTaskStatusByTaskId(Integer taskId, String status);

    /**
     * 保存任务
     * @param map
     */
    void saveTask(Map<String, Object> map);

    /**
     * 根据任务ID删除任务
     * @param id
     */
    void deleteById(Integer id);

    /**
     * 根究Map参数修改map
     * @param map
     */
    void updateTaskByMap(Map<String, Object> map);
}
