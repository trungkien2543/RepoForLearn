package AccessModifier.Learn;

public class A extends B {

    public void xyz(){
        B b = new B(); // class A nhin thay duoc class B
        b.a = "aowokca"; // class A nhin thay thuoc tinh cua B
    }
}
