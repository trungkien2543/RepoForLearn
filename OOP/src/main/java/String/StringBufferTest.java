package String;

public class StringBufferTest {
    public static void main(String[] args) {
        StringBuffer sb = new StringBuffer("a");

        sb.append("b");

        System.out.println(sb);

        StringBuilder sb2 = new StringBuilder("a");

        sb2.append("b");

        System.out.println(sb2);

//        StringBuffer sql = new StringBuffer(" SELECT * FROM ").append(tableName).append(" WHERE id = ").append(id);





    }
}
