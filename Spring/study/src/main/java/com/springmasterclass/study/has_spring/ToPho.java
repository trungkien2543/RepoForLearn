package com.springmasterclass.study.has_spring;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component
public class ToPho {
    private final BanhPho banhPho;


    @Qualifier("ThitBo")
    private final Thit thit;


    public ToPho(@Qualifier("thitBo") Thit thit, BanhPho banhPho) {
        this.thit = thit;
        this.banhPho = banhPho;
    }

    public void phucVu(){
        System.out.println("Phuc vu to pho gom: " + banhPho.layBanhPho() + " va "+ thit.layThit());

    }


}
