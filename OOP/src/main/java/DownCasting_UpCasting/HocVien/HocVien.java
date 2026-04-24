package DownCasting_UpCasting.HocVien;

public class HocVien {
    protected String hoTen;
    protected int tuoi;

    public void addInfor(String hoTen, int tuoi) {
        this.hoTen = hoTen;
        this.tuoi = tuoi;
    }

    public void showInfor() {
        System.out.println("Ho ten: " + hoTen);
        System.out.println("Tuoi: " + tuoi);
    }
}