package com.springmasterclass.study.no_spring;

public class ToPho {
    private BanhPho banhPho;

    private ThitBo thitBo;

    public ToPho(){
        // Van de: tightly couple la bi troi chat vao nhau
        // Giai quyet van de nay Spring se su dung IoC
        // Giao toan quyen cho mot ong chu nha hang hoac chu nha => Spring Container (Quan ly Bean)
        // Thi muon giao nguyen lieu se dung DI (Them phu thuoc)
        thitBo = new ThitBo();
        banhPho = new BanhPho();
    }

    public void phucVu(){
        System.out.println("Phuc vu to pho gom: " + banhPho.layBanhPho() + " va "+ thitBo.layThitBo());

    }


}
