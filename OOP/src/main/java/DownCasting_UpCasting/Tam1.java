package DownCasting_UpCasting;

public class Tam1 {

    public static void main(String[] args) {
        int a = 3;
        int b = 2;
        double x = (double) (a /  b);
        System.out.println(x);

        double y = 1.0/a/b;
        System.out.println(y);

        double z = (float) 1.0 / a / b;

        z = (float) (1.0/a/b);

        z = 1.0F/a/b;
    }
}
