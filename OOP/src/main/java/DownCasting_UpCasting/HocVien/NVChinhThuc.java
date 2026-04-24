package DownCasting_UpCasting.HocVien;

public class NVChinhThuc extends HocVien {
    protected double luong;

    public void addInfor(String hoTen, int tuoi, double luong) {
        super.addInfor(hoTen, tuoi);
        this.luong = luong;
    }

    @Override
    public void showInfor() {
        super.showInfor();
        System.out.println("Luong: " + luong);
    }
}