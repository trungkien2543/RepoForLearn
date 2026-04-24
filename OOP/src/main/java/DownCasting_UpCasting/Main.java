package DownCasting_UpCasting;

import DownCasting_UpCasting.HocVien.HocVien;
import DownCasting_UpCasting.HocVien.SinhVien;

public class Main {
    public static void main(String[] args) {
//        HocVien hocVien1 = new HocVien();
//        // Khong co casting
//
//        HocVien hocVien2 = (SinhVien) hocVien1; // Down truoc Up sau
//        // Bi loi run time
//        // HocVien NOT is-a SinhVien
//
//        ChuyenVien hocVien3 = (ChuyenVien) hocVien2; // Down
//
//        NVChinhThuc hocVien4 = hocVien3; // Up - Ep kieu ngam dinh
//
//        HocVien hocVien5 = hocVien3; // Up
//
//        HocVien hocVien6 = (HocVien) hocVien2; // Khong co
//
//        HocVien hocVien7 = (NVQuanLy) hocVien6; // Down truoc Up sau
//
//        NVChinhThuc hocVien8 = (NVChinhThuc) hocVien7; // Down
//
////        SinhVien hocVien9 = (SinhVien) hocVien3;
//        // Loi, khong chuyen duoc
//        // Loi compile-time
//
//        HocVien hocVien10 = new SinhVien(); // UpCasting
//        // Ep kieu ngam dinh
//
//
//        ChuyenVien hocVien11 = (ChuyenVien) hocVien10; // Down
//
//        // Up: Ko can tuong minh, down: bat buoc phai tuong minh
//
//        HocVien hocVien12 = (HocVien) new SinhVien();

////////////////////////////////////////////////////////////////////////////////
        HocVien hocVien13 = new SinhVien();
        HocVien hocVien14 = (SinhVien) hocVien13; // SinhVien is-a HocVien
//        SinhVien hocVien15 = new HocVien(); // Down ko tuong minh nen bi loi
        SinhVien hocVien16 = (SinhVien) new HocVien(); // HocVien NOT is-a SinhVien
    }


}
