package com.springmasterclass.study.dto.record;

public record UserRequest (
        String fullName,
        String phone,
        String email,
        String username,
        String password,
        String address
){
}
