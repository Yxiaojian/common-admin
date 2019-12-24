package com.xieke.admin.domain;

import com.xieke.admin.bo.TestBo;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 *
 * @author zhangyang
 * @date 2019/12/21
 */
public interface TestDomain {

    /**
     * 添加
     *
     * @param testBo
     * @return
     */
    Boolean insert(@RequestBody TestBo testBo);

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
    TestBo get(@RequestParam("id") Integer id);

    /**
     * 查询全部数据
     *
     * @return
     */
    List<TestBo> findAll();

    Boolean updateTestName(Integer testId,String testName, String remark);

    List<TestBo> findByClassId(Integer classId);


}
