package AccessModifier.Common;

import AccessModifier.Learn.B;

public class C extends B{

    public void xyz() {
        B b = new B(); // class A nhin thay duoc class B
        // super.a, this.a va a -> truy cap den ben a cua chinh class A, chu khong phai B
        // ngay ca khi su dung super.a thi chung ta cung dang truy cap bien a cua class A chu khong phai cua class B
        

    }
}
