package DownCasting_UpCasting.HocVien;

public class NVQuanLy extends NVChinhThuc {
    private String phongBan;

    public void addInfor(String hoTen, int tuoi, double luong, String phongBan) {
        super.addInfor(hoTen, tuoi, luong);
        this.phongBan = phongBan;
    }

    @Override
    public void showInfor() {
        super.showInfor();
        System.out.println("Phong ban: " + phongBan);
    }
}