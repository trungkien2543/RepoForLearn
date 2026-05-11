package com.springmasterclass.study.annotation;

import jakarta.validation.Constraint;
import jakarta.validation.Payload;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Target(ElementType.FIELD) // annotation chỉ dùng cho field
@Retention(RetentionPolicy.RUNTIME) // chạy lúc runtime
@Constraint(validatedBy = CCCDValidator.class) // validator xử lý logic
public @interface CCCD {

    String message() default "So cccd phai gom 12 chu so";

    Class<?>[] groups() default {};

    Class<? extends Payload>[] payload() default {};

}
