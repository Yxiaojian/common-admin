package com.xieke.admin.bo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@AllArgsConstructor
@NoArgsConstructor
public class StudentCountBo {
    private Integer thisSemesterStudentCount;
    private Integer allStudentCount;
    private Integer nextSemesterStudentCount;
    private String continuePercent;
}
