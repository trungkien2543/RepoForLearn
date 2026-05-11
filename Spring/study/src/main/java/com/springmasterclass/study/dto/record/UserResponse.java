package com.springmasterclass.study.dto.record;

public record UserResponse (
        String name,
        String phone,
        String email,
        String username,
        String address
){
}
