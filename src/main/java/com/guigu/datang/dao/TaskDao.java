package com.guigu.datang.dao;

import com.guigu.datang.domain.Task;
import com.guigu.datang.vo.ManIntenDanceVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * @author lenovo
 */
public interface TaskDao {

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
     * 根据ID查询任务
     *
     * @param id
     * @return
     */
    Task getTaskById(Integer id);

    /**
     * 跟据ID修改任务
     *
     * @param taskId
     * @param status
     */
    void updateTaskStatusByTaskId(@Param("taskId") Integer taskId, @Param("status") String status);

    /**
     * 保存任务
     *
     * @param map
     */
    void save(Map<String, Object> map);

    /**
     * 根据任务ID删除任务
     *
     * @param id
     */
    void deleteById(Integer id);

    /**
     * 根据Map参数修改任务
     * @param map
     */
    void updateTaskByMap(Map<String, Object> map);
}
