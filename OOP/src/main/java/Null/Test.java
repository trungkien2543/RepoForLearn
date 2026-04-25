package Null;

public class Test {

    //static SinhVien sv1; // khi sv1 = null thi nghia la sv1 chua tro den doi tuong nao ca
    // <==> SinhVien sv1 = null

    public static void main(String[] args) {

        SinhVien sv1;
//        Khong chay sout dc cho static context
//        Khai bao 1 bien tham chieu co ten la sv1. No se tro den doi tuong cua lop SinhVien hoac lop con cua SinhVien
//        Chua tro dên doi tuong nao ca. Ma moi chi khai bao 1 bien tham chieu, chu con tro sv1 chua tro den doi tuong nao

        SinhVien sv2 = null;

        // tuong duong voi line 1
        // Bien tham chieu bang null nghia la dang khong tro den doi tuong nao ca
        // Co 2 doi tuong khong tro den doi tuong nao ca

        sv2 = new SinhVien();

        // tao ra 1 doi tuong cua lop SinhVien
        // sv2 tro den doi tuong do
        // sau line 3, sv1 = null, sv2 tro den doi tuong lop SinhVien

        sv1 = sv2;

        // sv1 va sv2 cung tham chieu den cung 1 doi tuong

        sv2 = null;

        // sv2 khong con tro den doi tuong nao nua.
        // sv1 van tro den doi tuong duoc sinh ra o dong so 3

        sv1 = null;

        // sv1 va sv2 khong con tro den doi tuong nao ca
        // Doi tuong o line 3 khong con ai tro den ca -> Tro thanh doi tuong rac

        sv1.getHoTen();

        // line 7 se bi loi vi chung ta dang muon truy cap den 1 method cua 1 doi tuong do sv1 tro den
        // nhung vi sv1 khong tro den doi tuong nao. Nen sinh ra loi
    }
}
