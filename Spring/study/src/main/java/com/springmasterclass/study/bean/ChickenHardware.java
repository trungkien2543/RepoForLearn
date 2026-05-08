package com.springmasterclass.study.bean;

import jakarta.annotation.PostConstruct;
import jakarta.annotation.PreDestroy;
import org.springframework.stereotype.Component;

@Component
public class ChickenHardware {
    public ChickenHardware(){
        System.out.println("Khi Object duoc khoi tao");
    }

    @PostConstruct
    public void init(){
        System.out.println("Bean bat dau san sang duoc su dung");
    }

    @PreDestroy
    public void cleanUp(){
        System.out.println("Bean da bi huy");
    }
}
