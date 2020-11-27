package com.qf.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class OrderAndCarAndCity {
    private int id;
    private double price;
    private String carName;
    private String getCarName;
    private String backCarName;
    private String status;
    private String username;
}
