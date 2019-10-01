package com.xieke.admin.enums;

public enum CurriculumSemesterType {

    SPRING(1, "春季"),
    SUMMER(2, "暑假"),
    AUTUMN(3, "秋季"),
    WINTER(4, "寒假");

    private Integer value;
    private String content;

    CurriculumSemesterType(Integer value, String content) {
        this.value = value;
        this.content = content;
    }

    public Integer getValue() {
        return value;
    }

    public String getContent() {
        return content;
    }

    public static CurriculumSemesterType getByValue(Integer value) {
        CurriculumSemesterType[] types = CurriculumSemesterType.values();
        for (CurriculumSemesterType type : types) {
            if (type.getValue().equals(value)) {
                return type;
            }
        }
        return null;
    }

}
