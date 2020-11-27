package com.qf.pojo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
public class User {
    private Integer id;
    private String tel;
    private String password;
    private String email;
    private String invitation;
    private Integer apply;

    public User(Integer id, String tel, String password, String email, String invitation) {
        this.id = id;
        this.tel = tel;
        this.password = password;
        this.email = email;
        this.invitation = invitation;
    }

    public User() {
    }

    public User(Integer id, String tel, String password, String email, String invitation, Integer apply) {
        this.id = id;
        this.tel = tel;
        this.password = password;
        this.email = email;
        this.invitation = invitation;
        this.apply = apply;
    }
}
