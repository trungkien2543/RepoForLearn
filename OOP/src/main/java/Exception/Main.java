package Exception;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

public class Main {
    public static void main(String[] args) {
        // NumberFormatException

        String x = "123a";

        int i = convert(x);

        i++;

        System.out.println(i);

        System.out.println("Chay tiep den day roi");

//        try {
//            FileInputStream f = new FileInputStream("C://a.txt");
//        } catch (FileNotFoundException e) {
//            e.printStackTrace(); // In ra ngan xep goi ham
//        }

    }

    public static int convert(String x){
        int i;
        try {

            i = Integer.parseInt(x);
            System.out.println("Van chay OK");

        } catch (NumberFormatException e) {
            System.out.println("Chuoi dau vao khong hop le");
            e.printStackTrace();

            return 0;
        } finally {
            System.out.println("Finally");
        }

        System.out.println("Finally Gia");

        return i;
    }
}
