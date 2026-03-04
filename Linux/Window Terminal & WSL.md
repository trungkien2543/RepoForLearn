# Windows Terminal & Windows Subsystem for Linux

## Windows Terminal

- Cài đặt Windows Terminal
- Trải nghiệm thử
- Cài đặt Git/Gitbash
- Thêm gitbash vào Windows Terminal

## Windows Subsystem for Linux (WSL)

- Giới thiệu
- Cài đặt WSL 1

## Các lệnh Linux cơ bản

- ls: liệt kê file và folder trong thư mục
- cd (change directory): di chuyển vào thư mục khác
  - cd + tab: để xem các thư mục có thể di chuyển vào và để hiển thị nhanh hơn
  - cd ..: để quay trở lại 1 cấp
  - cd -: quay lại lần trước đó
  - cd: để quay ra home
- clear: xóa giao diện đang làm việc
- touch: tạo ra một file (lưu ý: tạo file có khoảng trắng thì bỏ vào '')
- vi: tạo ra một file mới và cho phép chỉnh sửa file trong đó
  - :q để thoát
  - :wq hoặc :x để lưu và thoát
  - :q! để thoát mà không lưu
- mkdir (make directory): tạo ra thư mục
  - mkdir -p: tạo ra thư mục gồm nhiều cấp
- cat (concatenate): xem nội dung file
  - cat <tên file> > <tên file mới>: ghép nội dung các file vào một file mới
- tail: xem những dòng cuối trong 1 file
  - tail -n i filename (i là số dòng muốn lấy)
  - tail -f filename (để tiếp tục theo dõi những thay đổi trong file)
- grep: tìm kiếm từ ở trong stout
- echo: in ra stout nội dung
  - echo <nội dung> > tên file (ghi đè nội dung cũ)
  - echo <nội dung> >> tên file (không ghi đè)
- cp: copy file
  - cp -r: để copy thư mục
- mv: di chuyển, cũng có thể dùng để đổi tên khi trong cùng thư mục cha
- rmdir: dùng để xóa thư mục trống
- rm: xóa file
  - rm -r: xóa folder và toàn bộ file trong folder 
- man: tra cứu thông tin về lệnh
- sudo: lấy quyền root
- chmod: gán quyền cho file hoặc thư mục
  - có 3 vai trò: User, Group, Other
  - có 3 quyền: read, write, execute
- chownL: đổi chủ sở hữu
- wget: dùng để tải file
- apt: lệnh giúp quản lý các thư viện trong máy ubuntu
- history
- kill: kết thúc tiến trình
  - -9: dùng để kết thúc tiến trình ngay lập tức
  - -15: kết thúc nhưng cho thời gian để lưu lại dữ liệu
- ping: kiểm tra tốc độ kết nối tới máy chủ
- uname (unix name): xem thông tin kernel của hệ điều hành 
- passwd: đổi mật khẩu cho tài khoản hiện tại
- top: xem chi tiết tiến trình như trên task manager trên window
- df: kiểm tra dung lượng còn trống
- free: kiểm tra dung lượng RAM, Swap

> Mẹo
- Nhấn `tab` để auto complete
- Nhấn `ctrl + a` / `ctrl + e` để di chuyển về đầu/cuối command
- `ctrl + ->` / `ctrl + <-` để di chuyển nhanh qua các từ
- Chạy đồng thời nhiều commands: `command-1;command-2;command-3`, `command-1 && command-2 && command-3`

## Chạy dự án ReactJS
- Cài đặt Node
- Tạo dự án với create-react-app
- Chạy dự án

## Chạy dự án ExpressJS
- Tạo dự án ExpressJS
- Chạy dự án

## Chạy dự án Laravel
- Cài đặt PHP 7.4 & composer
- Tạo dự án Laravel với composer
- Cài đặt MariaDB
- Kết nối với Database

## Cách gỡ bỏ
