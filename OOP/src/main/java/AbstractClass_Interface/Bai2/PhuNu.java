package AbstractClass_Interface.Bai2;

public class PhuNu extends ThienThan implements KeDocAc, KeNongNay, KeThanhThien {

    String ten;

    @Override
    public void CaHat() {
        System.out.println("hat karaoke");
    }

    @Override
    public void NhayMua() {
        System.out.println("nhay flashmode");
    }

    public void LamNguoiKhacTonThuong(){
        System.out.println("La mang");
    }


    @Override
    public void gietCacConKien() {
        System.out.println("giet con kien");
    }

    @Override
    public void dapDoNoiChe() {
        System.out.println("dap do noi che");
    }

    @Override
    public void cuoiVoiNguoiLa() {
        System.out.println("cuoi voi nguoi la");
    }
}
