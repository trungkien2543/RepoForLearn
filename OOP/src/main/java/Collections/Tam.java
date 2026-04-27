package Collections;

import java.util.*;

public class Tam {
    // Neu khong co java bean:

//    public static void main(String[] args) {
//        String[] hoTen = new String[5];
//
//        String[] gioiTinh = new String[5];
//
//
//        hoTen[0] = "Bui Lan";
//        gioiTinh[0] = "Nam";
//
//        hoTen[1] = "Nguyen Phan Dong";
//        gioiTinh[1] = "Nam";
//
//        // In ra thong tin nhan vien thu 2
//
//        System.out.println("Ho ten nhan vien thu 2: " + hoTen[1]);
//        System.out.println("Gioi tinh cua nhan vien 2:" + gioiTinh[1]);
//
//        // Day la cach lam khi chua xuat hien OOP
//
//        // Con 1 cach nua, cung tuong tu
//
//        ArrayList<String> hoTenAl = new ArrayList<String>();
//
//        ArrayList<String> gioiTinhAl = new ArrayList<String>();
//
//        hoTenAl.add("Bui Lan");
//        gioiTinhAl.add("Nu");
//
//        hoTenAl.add("Nguyen Phan Dong");
//        gioiTinhAl.add("Nam");
//
//        hoTenAl.set(1, "Yassuo");
//
//        // In ra nhan vien thu 2
//
//        System.out.println("Ho ten nhan vien thu 2: " + hoTenAl.get(1));
//        System.out.println("Gioi tinh cua nhan vien 2:" + gioiTinhAl.get(1));
//
//
//    }

//    public static void main(String[] args) {
//        SinhVien[] svArray = new SinhVien[5];
//        SinhVien sv1 = new SinhVien();
//
//        sv1.setGioiTinh("Nu");
//        sv1.setHoTen("Bui Lan");
//
//        svArray[0] = sv1;
//
//        // svArray la 1 thung to, chua nhieu thung nho
//        // moi thung nho chinh la java bean
//        // moi thung nho thi chua ho ten, gioi tinh,...
//
//        ArrayList<SinhVien> svAL = new ArrayList<>();
//
//        SinhVien sv2 = new SinhVien();
//        sv2.setHoTen("Bui Lan");
//        sv2.setGioiTinh("Nu");
//        svAL.add(sv2);
//
//    }

//    public static void main(String[] args) {
//
//        ArrayList<SinhVien> svAL = new ArrayList<>();
//
//        System.out.println("Moi ban nhap so luong sv: ");
//        Scanner sc = new Scanner(System.in);
//        int n = sc.nextInt();
//
////        SinhVien sv; // De tranh tao ra nhieu bien tham chieu
//
//        for (int i = 1; i <= n; i++){
//            SinhVien sv = new SinhVien();
//
//            sv.setHoTen("Ho ten" + i);
//            sv.setGioiTinh("Nu");
//
//            svAL.add(sv); // Moi phan tu cua ArrayList ban chat la 1 con tro, tro den 1 doi tuong
//
//        }
//
//        System.out.println("In ket qua:");
//
//        for (int i = 0; i < n; i++) {
//            System.out.println("Ho ten: "+ svAL.get(i).getHoTen());
//            System.out.println("Gioi tinh: "+svAL.get(i).getGioiTinh());
//        }
//
//
//
//    }

    public static void main(String[] args) {
        List<SinhVien> ar = new ArrayList<SinhVien>();

        Map<String, SinhVien> m= new HashMap<String, SinhVien>();

        // Dua vao
        String key1 = "sv1";
        SinhVien sv1 = new SinhVien();
        sv1.setGioiTinh("Nu");
        sv1.setHoTen("Bui Lan");

        m.put(key1, sv1);

        SinhVien sv2 = new SinhVien();
        sv2.setGioiTinh("Nu");
        sv2.setHoTen("Bui Lan 2");

        m.put(key1, sv2);

        // Lay ra:
        SinhVien sv = m.get("sv1");
        System.out.println(sv.getHoTen());
        System.out.println(sv.getGioiTinh());


        Set<String> s = new HashSet<String>();

        s.add("ABC");

        s.add("ABC");

        s.add("XYZ");

        System.out.println(s.size());


    }



}
