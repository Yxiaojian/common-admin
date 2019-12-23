package com.xieke.admin.domain;

import com.xieke.admin.bo.TestResultBo;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 *
 * @author zhangyang
 * @date 2019/12/21
 */
public interface TestResultDomain {

    /**
     * 添加
     *
     * @param testResultBo
     * @return
     */
    Boolean insert(@RequestBody TestResultBo testResultBo);

    /**
     * 删除
     *
     * @param id
     * @return
     */
    Boolean delete(@RequestParam("id") Integer id);

    /**
     * 根据主键查询
     *
     * @param id
     * @return
     */
    TestResultBo get(@RequestParam("id") Integer id);

    /**
     * 查询全部数据
     *
     * @return
     */
    List<TestResultBo> findAll();

    List<TestResultBo> findByTestId(Integer testId);


}
