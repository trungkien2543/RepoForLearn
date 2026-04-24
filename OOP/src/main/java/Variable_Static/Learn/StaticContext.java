package Variable_Static.Learn;

public class StaticContext {

    static public int s = 6; // static variable

    public int ns = 1;

    public static void main(String[] args) {
        s = 7;// s la bien static

//        ns = 2;// ns ko phai la bien static

        a();

        StaticContext tam = new StaticContext();
        tam.ns = 2;
        tam.b();


    }

    // ham static
    public static void a(){

    }

    public void b(){

    }
}
