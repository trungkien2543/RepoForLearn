import java.util.ArrayList;
import java.util.List;

public class ConCho {

    public String ten;

    public Integer tuoi;


    public void tuToChucSinhNhat(){
        System.out.println(ten+" tu to chuc sinh nhat");
        tuoi++;
    }

    public void toChucSinhNhatConChoKhac(ConCho choKhac){
        System.out.println(ten+" to chuc sinh nhat cho "+choKhac.ten);
        choKhac.tuoi++;
    }

    public void anXuong(CucXuong cucXuong){
        System.out.println(ten+" dang an xuong "+cucXuong.loaiXuong);
    }

    public void anNhieuXuong(List<CucXuong> cucXuongList){
        System.out.println(ten+" an nhieu xuong");
        for (CucXuong cucXuong : cucXuongList) {
            System.out.println(ten+" an "+cucXuong.loaiXuong);
        }
    }

    public CucPhan anXuong2(CucXuong cucXuong) {
        System.out.println(ten + " dang an xuong 2 la " + cucXuong.loaiXuong);

        return new CucPhan(cucXuong.loaiXuong);
    }

    public List<CucPhan> anXuong3(List<CucXuong> cucXuongList) {
        System.out.println(ten + " dang an xuong 3");

        List<CucPhan> cucPhanList = new ArrayList<>();

        for (CucXuong cucXuong : cucXuongList) {
           cucPhanList.add(new CucPhan(cucXuong.loaiXuong));
        }

        return cucPhanList;
    }


    public static void main(String[] args) {
        ConCho cho1 = new ConCho();
        cho1.ten = "Lu";
        cho1.tuoi = 3;

        ConCho cho2 = new ConCho();
        cho2.ten = "Ben";
        cho2.tuoi = 4;

        cho2.tuToChucSinhNhat();
        System.out.println(cho2.tuoi);

        cho2.toChucSinhNhatConChoKhac(cho1);
        System.out.println(cho1.tuoi);

        CucXuong cucXuong1 = new CucXuong();
        cucXuong1.loaiXuong = "xuong heo";

        cho1.anXuong(cucXuong1);

        CucXuong cucXuong2 = new CucXuong();
        cucXuong2.loaiXuong = "xuong ga";

        CucXuong cucXuong3 = new CucXuong();
        cucXuong3.loaiXuong = "xuong bo";

        List<CucXuong> cucXuongList = new ArrayList<>();
        cucXuongList.add(cucXuong1);
        cucXuongList.add(cucXuong2);
        cucXuongList.add(cucXuong3);

        cho2.anNhieuXuong(cucXuongList);

        System.out.println(cho1.anXuong2(cucXuong2).loaiPhan);

        List<CucPhan> cucPhanList = cho2.anXuong3(cucXuongList);

        for (CucPhan cucPhan : cucPhanList){
            System.out.println(cucPhan.loaiPhan);
        }

    }
}

class CucXuong{
    public String loaiXuong;
}

class CucPhan{
    public String loaiPhan;

    public CucPhan(String loaiPhan) {
        this.loaiPhan = loaiPhan;
    }
}