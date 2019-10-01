package com.xieke.admin.enums;

public enum PayType {
    ALIPAY(1,"支付宝"),
    WECHAT(2,"微信"),
    POS(3,"POS刷卡"),
    E_BANK(4,"网银"),
    CASH(5,"现金");


    private Integer value;
    private String content;

    PayType(Integer value, String content) {
        this.value = value;
        this.content = content;
    }

    public Integer getValue() {
        return value;
    }

    public String getContent() {
        return content;
    }

    public static PayType getByValue(Integer value) {
        PayType[] types = PayType.values();
        for (PayType type : types) {
            if (type.getValue().equals(value)) {
                return type;
            }
        }
        return null;
    }
}
