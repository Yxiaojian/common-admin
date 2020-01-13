package com.xieke.admin.controller;

import com.xieke.admin.bo.ExcelData;
import com.xieke.admin.bo.OrderBo;
import com.xieke.admin.bo.StudentBo;
import com.xieke.admin.domain.OrderDomain;
import com.xieke.admin.domain.StudentDomain;
import com.xieke.admin.dto.ResultInfo;
import com.xieke.admin.enums.CurriculumGradeType;
import com.xieke.admin.page.HtPage;
import com.xieke.admin.util.BeanUtil;
import com.xieke.admin.util.ExcelUtils;
import com.xieke.admin.vo.StudentExportVo;
import org.apache.commons.lang.StringUtils;
import org.joda.time.DateTime;
import org.springframework.stereotype.Controller;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Resource
    private StudentDomain studentDomain;

    @Resource
    private OrderDomain orderDomain;


    @RequestMapping("/add")
    @ResponseBody
    public ResultInfo addStudent(String userName, String mobilePhone1, String phone1Info, String mobilePhone2, Integer sex, String phone2Info, String school, Integer grade, Integer startYear, String homeAddress, String birthday, String remarks) {
        StudentBo studentBo = new StudentBo(userName, sex, mobilePhone1, phone1Info, mobilePhone2, phone2Info, school, grade, startYear, 0, new Date(), remarks, homeAddress, birthday);
        Integer studentId = 0;
        StudentBo byNameAndPhone1 = studentDomain.getByNameAndPhone1(userName, mobilePhone1);
        if (byNameAndPhone1 != null) {
            studentId = byNameAndPhone1.getID();
        } else {
            studentId = studentDomain.insert(studentBo);
        }
        if (studentId == null) {
            return new ResultInfo<>("新增失败");
        }
        return new ResultInfo(studentId);
    }

    @RequestMapping("/delete")
    @ResponseBody
    public ResultInfo deleteStudent(Integer studentId) {
        if (studentId == null) {
            return new ResultInfo<>("学生ID不能为空");
        }
        if (!studentDomain.softDelete(studentId)) {
            return new ResultInfo<>("删除失败");
        }
        return new ResultInfo(true);
    }

    @RequestMapping("/update")
    @ResponseBody
    public ResultInfo updateStudent(Integer studentId, String studentName, Integer sex, String phoneOne, String phoneOneRemark, String phoneTwo, String phoneTwoRemark, String school, Integer grade, Integer entranceYear, String remark) {
        if (studentId == null) {
            return new ResultInfo<>("学生ID不能为空");
        }
        if (!studentDomain.update(studentId, studentName, sex, phoneOne, phoneOneRemark, phoneTwo, phoneTwoRemark, school, grade, entranceYear, remark)) {
            return new ResultInfo<>("更新失败");
        }
        return new ResultInfo(true);
    }


    @RequestMapping("/findPage")
    @ResponseBody
    public ResultInfo findPage(@RequestParam(value = "page", defaultValue = "1") Integer page, @RequestParam(value = "limit", defaultValue = "20") Integer limit, Integer grade, String studentName) {
        HtPage<StudentBo> htPage = studentDomain.findPage(page, limit, grade, studentName == null ? null : studentName.trim());
        return new ResultInfo("", "0", htPage.getRecords(), new Long(htPage.getTotal()).intValue());
    }

    @RequestMapping("/findExportList")
    @ResponseBody
    public ResultInfo findExportList(Integer classId) {
        List<StudentExportVo> studentExportVos = this.findStudentExportVos(classId);
        return new ResultInfo("", "0", studentExportVos, new Long(studentExportVos.size()).intValue());
    }

    @RequestMapping("/exportList")
    public void exportList(HttpServletResponse response, Integer classId) throws Exception {
        DateTime time = new DateTime();
        String fileName = "student-" + time.toString("yyyyMMddHHmmss");
        List<StudentExportVo> studentExportVos = this.findStudentExportVos(classId);
        List<List<Object>> rows = new ArrayList<>();
        for (StudentExportVo studentExportVo : studentExportVos) {
            List<Object> row = new ArrayList<>();
            row.add(studentExportVo.getStudentName());
            if (studentExportVo.getSex() == 0) {
                row.add("女");
            }
            if (studentExportVo.getSex() == 1) {
                row.add("男");
            }
            row.add(studentExportVo.getPhoneOne());
            row.add(studentExportVo.getSchool());
            row.add(CurriculumGradeType.getByValue(studentExportVo.getGrade()).getContent());
            row.add(studentExportVo.getEntranceYear());
            row.add(studentExportVo.getRecentCurriculum());
            row.add(studentExportVo.getHistoryCurriculums());
            rows.add(row);
        }
        ExcelData data = new ExcelData();
        data.setName("student");
        List<String> titles = new ArrayList<>();
        titles.add("学生姓名");
        titles.add("性别");
        titles.add("电话");
        titles.add("学校");
        titles.add("年级");
        titles.add("入学年份");
        titles.add("最近的一门课程");
        titles.add("历史课程");
        data.setTitles(titles);
        data.setRows(rows);
        ExcelUtils.exportExcel(response, fileName, data);
    }

    public List<StudentExportVo> findStudentExportVos(Integer classId) {
        List<StudentExportVo> studentExportVos = new ArrayList<>();
        List<OrderBo> orderBos = orderDomain.findByClassId(classId);
        for (OrderBo orderBo : orderBos) {
            StudentBo studentBo = studentDomain.get(orderBo.getStudentID());
            StudentExportVo studentExportVo = BeanUtil.convert(studentBo, StudentExportVo.class);
            List<OrderBo> studentHistoryOrders = orderDomain.findByStudentId(orderBo.getStudentID());
            List<String> historyCurriculums = new ArrayList<>();
            if (!CollectionUtils.isEmpty(studentHistoryOrders)) {
                for (OrderBo studentHistoryOrder : studentHistoryOrders) {
                    historyCurriculums.add(studentHistoryOrder.getCurriculumName());
                }
            }
            String historyCurriculumsString = StringUtils.join(historyCurriculums, ",");
            studentExportVo.setHistoryCurriculums(historyCurriculumsString);
            studentExportVo.setRecentCurriculum(historyCurriculums.get(0));
            studentExportVos.add(studentExportVo);
        }
        return studentExportVos;
    }


    @RequestMapping("/home")
    public void toHome() {

    }

    @RequestMapping("/enroll")
    public void toEnroll() {

    }

    @RequestMapping("/list")
    public void toList() {

    }

    @RequestMapping("/*")
    public void toHtml() {

    }


}
