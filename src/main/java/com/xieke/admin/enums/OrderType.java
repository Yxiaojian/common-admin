package com.xieke.admin.enums;

public enum OrderType {
    NEW(1, "新报名订单"),
    OLD(2, "续报订单");


    private Integer value;
    private String content;

    OrderType(Integer value, String content) {
        this.value = value;
        this.content = content;
    }

    public Integer getValue() {
        return value;
    }

    public String getContent() {
        return content;
    }

    public static OrderType getByValue(Integer value) {
        OrderType[] types = OrderType.values();
        for (OrderType type : types) {
            if (type.getValue().equals(value)) {
                return type;
            }
        }
        return null;
    }
}
