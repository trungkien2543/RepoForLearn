package Variable_Static.Learn;

public class Tam {

    public int v = 5; // instance variable

    static public int s = 6; // static variable

    public static void main(String[] args) {
        int x = 1; // local variable

        {
            int y = 2; // local variable

        }

        if (x == 1){
            int z = 3; // local variable
        }

        for (int i = 1; i <= 10; i++){ // i la local variable
            int m = 4; // local variable
        }

        int k = 6; // khong duoc khai static hoac public/ protected / private

        Tam tam1 = new Tam();
        tam1.v = 7;
        tam1.s = 8; // Cung OK luon  --> Khong nen truy cap den s theo cach nay
        Tam.s = 9; // Cang OK --> Nen truy cap theo cach nay
        //Tam.v = 10; // Khong dc, vi v khong phai bien static



    }
}
