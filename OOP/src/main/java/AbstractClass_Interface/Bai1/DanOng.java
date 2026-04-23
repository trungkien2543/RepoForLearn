package AbstractClass_Interface.Bai1;

public class DanOng extends ConNguoi implements NguoiBan, NguoiChong, NhanVien{

    String ten;

    @Override
    public void SuyNghi() {
        System.out.println("Mai di lam");
    }

    @Override
    public void AnUong() {
        System.out.println("An Com");
    }

    @Override
    public void HitTho() {
        System.out.println("Hit 2 nhip");
    }

    public void LayVo(){
        System.out.println("Lay vo");
    }

    @Override
    public void DiNhau() {
        System.out.println("Di nhau");
    }

    @Override
    public void ChoVoDiBoi() {
        System.out.println("Cho vo di boi");
    }

    @Override
    public void CongHien() {
        System.out.println("Cong hien");
    }
}
