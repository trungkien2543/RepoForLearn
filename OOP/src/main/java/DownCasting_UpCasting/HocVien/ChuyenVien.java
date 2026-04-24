package DownCasting_UpCasting.HocVien;

public class ChuyenVien extends NVChinhThuc {
    private String chuyenMon;

    public void addInfor(String hoTen, int tuoi, double luong, String chuyenMon) {
        super.addInfor(hoTen, tuoi, luong);
        this.chuyenMon = chuyenMon;
    }

    @Override
    public void showInfor() {
        super.showInfor();
        System.out.println("Chuyen mon: " + chuyenMon);
    }
}