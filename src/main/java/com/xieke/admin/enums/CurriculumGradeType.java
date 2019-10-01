package com.xieke.admin.enums;

public enum CurriculumGradeType {
    ONE(1, "一年级"),
    TOW(2, "二年级"),
    THREE(3, "三年级"),
    FOUR(4, "四年级"),
    FIVE(5, "五年级"),
    SIX(6, "六年级");

    private Integer value;
    private String content;

    CurriculumGradeType(Integer value, String content) {
        this.value = value;
        this.content = content;
    }

    public Integer getValue() {
        return value;
    }

    public String getContent() {
        return content;
    }

    public static CurriculumGradeType getByValue(Integer value) {
        CurriculumGradeType[] types = CurriculumGradeType.values();
        for (CurriculumGradeType type : types) {
            if (type.getValue().equals(value)) {
                return type;
            }
        }
        return null;
    }
}
