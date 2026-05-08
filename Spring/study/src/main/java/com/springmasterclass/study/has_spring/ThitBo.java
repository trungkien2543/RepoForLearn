package com.springmasterclass.study.has_spring;

import org.springframework.stereotype.Component;

@Component
public class ThitBo implements Thit{

    public String layThitBo(){
        return "lay 100g thit bo";
    }


    @Override
    public String layThit() {
        return "lay 100g thit bo";
    }
}
