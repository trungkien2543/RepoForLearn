package Exception;

public class TH5 {

    public static void main(String[] args) {
        // Xem ham main la thang ngoi phia sau
        // Ham main se su dung 1 dich vu do ngoi truoc cung cap
        // ten la omBung
        try {
            omBung();
        } catch (MyException e) {
            System.out.println("Da den day 2!");
        }

        System.out.println("Da den day 3!");

    }

    public static void omBung() throws MyException {
        // omBung xem nhu la thang ngoi phia truoc
        System.out.println("Da den day 1!");
        throw new MyException();

    }

}
