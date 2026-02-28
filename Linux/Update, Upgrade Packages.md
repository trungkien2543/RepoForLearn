# command for update, uprade

```
sudo apt update

sudo apt uprade
```

# Giải thích lệnh `sudo apt update`

## 1️⃣ Lệnh đầy đủ

```bash
sudo apt update

Lệnh này thường dùng trên các hệ điều hành Linux như Ubuntu (kể cả khi chạy trên WSL).

2️⃣ Phân tích từng thành phần
🔹 sudo

Viết tắt của Super User Do

Cho phép chạy lệnh với quyền quản trị (root)

Cần thiết vì cập nhật hệ thống là thao tác yêu cầu quyền cao

🔹 apt

Advanced Package Tool

Công cụ quản lý phần mềm trên Debian/Ubuntu

Dùng để:

Cài đặt phần mềm

Gỡ phần mềm

Cập nhật hệ thống

🔹 update

Cập nhật danh sách các gói phần mềm

Không phải cập nhật phần mềm đang cài

Không thay đổi hệ thống

3️⃣ Nó thực sự làm gì?

Khi bạn chạy:

sudo apt update

Hệ thống sẽ:

Kết nối tới các repository (server chứa phần mềm)

Tải về metadata (thông tin phiên bản mới nhất)

So sánh với phiên bản hiện tại trong máy

Hiển thị thông báo có bao nhiêu package có thể nâng cấp

4️⃣ So sánh với apt upgrade
Lệnh	Chức năng
sudo apt update	Cập nhật danh sách phiên bản mới
sudo apt upgrade	Cập nhật phần mềm đã cài lên bản mới
5️⃣ Quy trình chuẩn khi cập nhật
sudo apt update
sudo apt upgrade

Hoặc:

sudo apt update && sudo apt upgrade -y
🎯 Tóm lại

apt update = Cập nhật danh sách phần mềm
apt upgrade = Thực sự nâng cấp phần mềm

Bạn nên chạy apt update trước khi cài đặt hoặc nâng cấp bất kỳ package nào để tránh lỗi phiên bản.