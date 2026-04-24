package Variable_Static.Learn;

public class Tam1 {

    static public int s = 6; // static variable

    public static void main(String[] args) {
        Tam1 tam1 = new Tam1();
        Tam1 tam2 = new Tam1();

        tam1.s = 7;
        System.out.println(tam2.s);

        tam2.s = 8;
        System.out.println(tam1.s);
        System.out.println(tam2.s);
        System.out.println(Tam1.s);

        // s la bien static nen duoc cac doi tuong su dung chung

        tam1.a();
        tam2.a();
        Tam1.a();

        //

    }

    // ham static
    public static void a(){
        // TODO



    }
}
