package This_Super.Learn;

public class A extends B {

    protected String a = "aa";
    // Overide bien: bien cua con che khuat
    // bien cua cha ma no copy duoc
    // tren class hien tai co 2 bien a cung ten
    // neu nhu ta goi a thoi thi no hieu la this.a
    // neu nhu ta goi super.a thi no hieu la ta dang goi bien a duoc copy tu cha
    // va nho la ca 2 bien deu dang nam tren class con

    public void xyz(){
        System.out.println(a);
        System.out.println(this.a);
        System.out.println(super.a);
    }

    public static void main(String[] args) {
        A a = new A();
        a.xyz();
    }
}
