package DownCasting_UpCasting.HocVien;

public class NVThuViec extends HocVien {
    private int thangThuViec;

    public void addInfor(String hoTen, int tuoi, int thangThuViec) {
        super.addInfor(hoTen, tuoi);
        this.thangThuViec = thangThuViec;
    }

    @Override
    public void showInfor() {
        super.showInfor();
        System.out.println("Thang thu viec: " + thangThuViec);
    }
}