package String;

public class Main {
    public static void main(String[] args) {
        String a = "a";

        a.concat("b");
        // van co doi tuong moi duoc tao ra
        // do chung ta goi ham concat
        // nhung bien tham chieu a van tro den doi tuong cu

        System.out.println(a);

        // Vi doi tuong String duoc sinh ra o dong so 5
        // nguoi ta goi la doi tuong bat bien

//        a = a.concat("b");

        // bien tham chieu a tro den doi tuong moi
        // nghia la ham concat tao ra doi tuong moi
        // va bien tham chieu a tro den doi tuong moi do

        System.out.println(a);

//        String sql = "SELECT * FROM " + tableName + " WHERE id = " + id;

        // Viet nhu the nay nghia la chung ta da tao ra 4 doi tuong cua class String
        // Trong khi chi su dung 1 doi tuong duy nhat do la doi tuong sau cung
        // Nghia la tao ra 3 doi tuong rac trong bo nho, vua gay lang phi, vua lam giam hieu suat

        String b = new String("a");

        System.out.println(a.equals(b));
        // Doi tuong do a tham chieu den co cung noi dung giong voi doi tuong b dang tham chieu den hay khong

        System.out.println(a == b);
        // kiem tra thu 2 bien tham chieu a va b co dang cung tham chieu den cung 1 doi tuong hay khong
    }
}
