package com.springmasterclass.study.annotation;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

public class CCCDValidator implements ConstraintValidator<CCCD, String> {

    @Override
    public boolean isValid(String s, ConstraintValidatorContext constraintValidatorContext) {

        if (s == null  || s.isBlank()){
            return true;
        }

        return s.matches("[0-9]{12}$");
    }


}
