package String;

public class ConcatTest {
    public static String concatWithString() {
        String t = "Java";
        for (int i = 0; i < 10000; i++) {
            t = t + "Hello";
        }
        return t;
    }

    public static String concatWithStringBuffer() {
        StringBuffer sb = new StringBuffer("Java");
        for (int i = 0; i < 10000; i++) {
            sb.append("Hello");
        }
        return sb.toString();
    }

//    public static void main(String[] args) {
//        long startTime = System.currentTimeMillis();
//        concatWithString();
//        System.out.println("Thời gian nối chuỗi của lớp String: "
//                + (System.currentTimeMillis() - startTime) + "ms");
//        startTime = System.currentTimeMillis();
//        concatWithStringBuffer();
//        System.out.println("Thời gian nối chuỗi của lớp StringBuffer: "
//                + (System.currentTimeMillis() - startTime) + "ms");
//    }

    public static void main(String[] args) {
        long startTime = System.currentTimeMillis();
        StringBuffer sb = new StringBuffer("Java");
        for (int i = 0; i < 100000; i++) {
            sb.append("Hello");
        }
        System.out.println("Thời gian nối chuỗi của StringBuffer: "
                + (System.currentTimeMillis() - startTime) + "ms");
        startTime = System.currentTimeMillis();
        StringBuilder sb2 = new StringBuilder("Java");
        for (int i = 0; i < 100000; i++) {
            sb2.append("Hello");
        }
        System.out.println("Thời gian nối chuỗi của StringBuilder: "
                + (System.currentTimeMillis() - startTime) + "ms");
    }
}
