package com.springmasterclass.study.dto.record;

import com.springmasterclass.study.annotation.CCCD;
import jakarta.validation.constraints.*;

public record UserRequest(
        @NotEmpty(message = "Truong nay khong duoc phep trong") // Doi tuong no quan la khac null va do dai chuoi phai lon 0
        @NotBlank // Doi tuong no quan tam la khac null va sau khi bo het dau cach thi phai > 0
        @NotNull(message = "Truong nay khong duoc null")
        String name,

        @Min(value = 0, message = "Gia tri khong nho hon 0")
        @Size(min = 9, max = 11, message = "So dien thoai phai co 9 den 10 ky tu")
        String phone,

        @Email
        @NotBlank
        String email,

        String username,
        String password,
        String address,

        @CCCD
        String cccd
) {
}