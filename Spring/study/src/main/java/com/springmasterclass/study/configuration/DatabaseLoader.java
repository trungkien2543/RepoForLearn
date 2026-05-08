package com.springmasterclass.study.configuration;

import com.springmasterclass.study.service.ConnectionService;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

@Component
public class DatabaseLoader {

    @Autowired
    private ConnectionService connectionService;

//    public DatabaseLoader(){
//        System.out.println("STEP 1: Constructor running .....");
//
//        try{
//            connectionService.connect();
//        } catch (NullPointerException e){
//            System.out.println(e);
//        }
//    }

    @PostConstruct
    public void init(){
        System.out.println("STEP 1: Constructor running .....");

        try{
            connectionService.connect();
        } catch (NullPointerException e){
            System.out.println(e);
        }
    }

}
