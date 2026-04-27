package Exception;

public class TH1 {

    public static void main(String[] args) {
        // Xem ham main la thang ngoi phia sau
        // Ham main se su dung 1 dich vu do ngoi truoc cung cap
        // ten la omBung
        omBung();
    }

    public static void omBung(){
        // omBung xem nhu la thang ngoi phia truoc
        String a = null;
        try {
            System.out.println(a.charAt(0));
        }catch (NullPointerException e){
            System.out.println("Thang ngoi truoc da chup cuc gach!");
        }
    }


}
