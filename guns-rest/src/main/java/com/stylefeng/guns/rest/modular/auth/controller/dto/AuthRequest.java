package com.stylefeng.guns.rest.modular.auth.controller.dto;

import com.stylefeng.guns.rest.modular.auth.validator.dto.Credence;

/**
 * 认证的请求dto
 *
 * @author fengshuonan
 * @Date 2017/8/24 14:00
 */
public class AuthRequest implements Credence {

    private String username;
    private String password;

    public void setUsername(String userName) {
        this.username = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    @Override
    public String getCredenceName() {
        return this.username;
    }

    @Override
    public String getCredenceCode() {
        return this.password;
    }
}
