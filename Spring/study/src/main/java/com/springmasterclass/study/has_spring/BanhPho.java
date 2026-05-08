package com.springmasterclass.study.has_spring;

import org.springframework.stereotype.Component;

// Danh dau @Component de Spring biet day la nguyen lieu can quan ly (Tao Bean)
@Component
public class BanhPho {

    public String layBanhPho(){
        return "lay 100g banh pho";
    }

}
