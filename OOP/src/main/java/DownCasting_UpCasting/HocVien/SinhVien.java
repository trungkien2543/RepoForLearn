package DownCasting_UpCasting.HocVien;

public class SinhVien extends HocVien {
    private String maSV;

    public void addInfor(String hoTen, int tuoi, String maSV) {
        super.addInfor(hoTen, tuoi);
        this.maSV = maSV;
    }

    @Override
    public void showInfor() {
        super.showInfor();
        System.out.println("Ma sinh vien: " + maSV);
    }
}