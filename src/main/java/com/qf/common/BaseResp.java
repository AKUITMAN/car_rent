package com.qf.common;

import lombok.Data;

@Data
public class BaseResp {
    private Integer code;

    private String msg;

    private Long count;

    private Object data;
}
