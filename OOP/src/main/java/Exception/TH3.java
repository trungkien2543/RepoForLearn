package Exception;

public class TH3 {
    public static void main(String[] args) {
        // Xem ham main la thang ngoi phia sau
        // Ham main se su dung 1 dich vu do ngoi truoc cung cap
        // ten la omBung
        omBung(); // Vang vao mat nguoi su dung, nguoi chay chuong trinh bat
        // Di nhien chuong trinh se bi dung khong chay tiep duoc
    }

    public static void omBung() throws NullPointerException {
        // omBung xem nhu la thang ngoi phia truoc
        String a = null;

        System.out.println(a.charAt(0));

        System.out.println("Thang noi truoc da ne cuc gach!");

        System.out.println("Van den day");

    }
}
