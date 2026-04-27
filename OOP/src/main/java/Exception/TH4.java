package Exception;

public class TH4 {

    public static void main(String[] args) {
        // Xem ham main la thang ngoi phia sau
        // Ham main se su dung 1 dich vu do ngoi truoc cung cap
        // ten la omBung
        try {
            omBung();
        } catch (NullPointerException e) {
            System.out.println("Ngoi sau cung huong sai!");
        }

    }

    public static void omBung() {
        // omBung xem nhu la thang ngoi phia truoc
        try {
            String a = null;

            System.out.println(a.charAt(0));
        } catch (NullPointerException e) {
            System.out.println("Thom qua, ngoi truoc can 1 mieng");

            throw e; // Sua khi bat thi phong tiep cho ng khac bat
        }
    }
}
