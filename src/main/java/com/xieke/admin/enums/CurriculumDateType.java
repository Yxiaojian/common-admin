package com.xieke.admin.enums;

public enum CurriculumDateType {
    ONE(1, "一期"),
    TOW(2, "二期"),
    THREE(3, "三期"),
    FOUR(4, "四期"),
    SUPER(5,"特殊"),
    MONDAY(6,"周一"),
    TUESDAY(7,"周二"),
    WEDNESDAY(8,"周三"),
    THURSDAY(9,"周四"),
    FRIDAY(10,"周五"),
    SATURDAY(11,"周六"),
    WEEKDAY(12,"周日");


    private Integer value;
    private String content;

    CurriculumDateType(Integer value, String content) {
        this.value = value;
        this.content = content;
    }

    public Integer getValue() {
        return value;
    }

    public String getContent() {
        return content;
    }

    public static CurriculumDateType getByValue(Integer value) {
        CurriculumDateType[] types = CurriculumDateType.values();
        for (CurriculumDateType type : types) {
            if (type.getValue().equals(value)) {
                return type;
            }
        }
        return null;
    }
}
