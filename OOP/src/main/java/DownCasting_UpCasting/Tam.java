package DownCasting_UpCasting;

public class Tam {

    public static void main(String[] args) {
        double d = 20.0;

        //float f = d;
        // Loi gi chung ta dang muon down casting
        // tuc la tu double chuyen ve float

        float f = (float) d;

        f = 12.0F;
        d = f;
        // Khong loi, vi chung ta dang muon up casting
        // o day da co ep kieu xay ra, nhung la ep kieu ngam dinh

        d = (double) f;

        double x = 1;
        double y = 1.0;
        double z = 1.0d;
        double k = 1.0D;
        double p = 1.0F;


        float l = 1;
        float m = (float) 1.0;
        float n = 1.0F;
        float o = 1.0f;
        float q = (float) 1.0D;
    }
}
