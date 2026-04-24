package DownCasting_UpCasting.HocVien;

import java.util.ArrayList;
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
//        Scanner sc = new Scanner(System.in);
//        ArrayList<HocVien> danhSach = new ArrayList<>();
//
//        for (int i = 0; i < 1; i++) {
//            System.out.println("\nChon loai hoc vien:");
//            System.out.println("1. Sinh Vien");
//            System.out.println("2. Nhan vien thu viec");
//            System.out.println("3. Chuyen vien");
//            System.out.println("4. Nhan vien quan ly");
//            System.out.print("Nhap lua chon: ");
//            int choice = sc.nextInt();
//            sc.nextLine();
//
//            System.out.print("Nhap ho ten: ");
//            String hoTen = sc.nextLine();
//
//            System.out.print("Nhap tuoi: ");
//            int tuoi = sc.nextInt();
//            sc.nextLine();
//
//            switch (choice) {
//                case 1:
//                    SinhVien sv = new SinhVien();
//                    System.out.print("Nhap ma sinh vien: ");
//                    String maSV = sc.nextLine();
//                    sv.addInfor(hoTen, tuoi, maSV);
//                    danhSach.add(sv);
//                    break;
//
//                case 2:
//                    NVThuViec tv = new NVThuViec();
//                    System.out.print("Nhap so thang thu viec: ");
//                    int thang = sc.nextInt();
//                    tv.addInfor(hoTen, tuoi, thang);
//                    danhSach.add(tv);
//                    break;
//
//                case 3:
//                    ChuyenVien cv = new ChuyenVien();
//                    System.out.print("Nhap luong: ");
//                    double luongCV = sc.nextDouble();
//                    sc.nextLine();
//                    System.out.print("Nhap chuyen mon: ");
//                    String chuyenMon = sc.nextLine();
//                    cv.addInfor(hoTen, tuoi, luongCV, chuyenMon);
//                    danhSach.add(cv);
//                    break;
//
//                case 4:
//                    NVQuanLy ql = new NVQuanLy();
//                    System.out.print("Nhap luong: ");
//                    double luongQL = sc.nextDouble();
//                    sc.nextLine();
//                    System.out.print("Nhap phong ban: ");
//                    String phongBan = sc.nextLine();
//                    ql.addInfor(hoTen, tuoi, luongQL, phongBan);
//                    danhSach.add(ql);
//                    break;
//
//                default:
//                    System.out.println("Lua chon khong hop le");
//                    i--;
//            }
//        }
//
//        System.out.println("\n===== DANH SACH HOC VIEN =====");
//        for (HocVien hv : danhSach) {
//            hv.showInfor();
//            System.out.println("----------------");
//        }
//
//        sc.close();

        HocVien a = new SinhVien();
        System.out.println(a instanceof HocVien);
    }

}


// Instance of