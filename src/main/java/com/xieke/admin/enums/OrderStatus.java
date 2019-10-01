package com.xieke.admin.enums;

public enum OrderStatus {
    DEFAULT(0,"初始状态"),
    WAIT_PAY(1,"待付款"),
    PART_PAYED(2,"部分付款"),
    PAYED(3,"已付款"),
    OVER(4,"已完成");

    private Integer value;
    private String content;

    OrderStatus(Integer value, String content) {
        this.value = value;
        this.content = content;
    }

    public Integer getValue() {
        return value;
    }

    public String getContent() {
        return content;
    }

    public static OrderStatus getByValue(Integer value) {
        OrderStatus[] types = OrderStatus.values();
        for (OrderStatus type : types) {
            if (type.getValue().equals(value)) {
                return type;
            }
        }
        return null;
    }


}
