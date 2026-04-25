package NullPointerException;

public class Test {

    public int x = 0;

    public void a(){

    }

    public static void main(String[] args) {

        String a = "Hwi";

        int x = a == null ? -1 : a.indexOf("H");

        System.out.println(x);

    }
}
