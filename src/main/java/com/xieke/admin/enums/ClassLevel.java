package com.xieke.admin.enums;

public enum ClassLevel {
    ONE(1, "一档"),
    TOW(2, "二档"),
    THREE(3, "三档"),
    FOUR(4, "四档"),
    FIVE(5, "五档");

    private Integer value;
    private String content;

    ClassLevel(Integer value, String content) {
        this.value = value;
        this.content = content;
    }

    public Integer getValue() {
        return value;
    }

    public String getContent() {
        return content;
    }

    public static ClassLevel getByValue(Integer value) {
        ClassLevel[] types = ClassLevel.values();
        for (ClassLevel type : types) {
            if (type.getValue().equals(value)) {
                return type;
            }
        }
        return null;
    }
}
