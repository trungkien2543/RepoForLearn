# Hủy bỏ commit mới, quay lại commit cũ
. git reset <commit_id>

## Các câu lệnh cho git reset
. git reset --soft <commit_id>

-> Di chuyển HEAD về vị trí commit. Trạng thái của stage và tất cả sự thay đổi của file được giữ nguyên

. git reset <commit_id>

-> Di chuyển HEAD về vị trí commit reset, vẫn giữ tất cả thay đổi của file, nhưng loại bỏ các thay đổi stage

. git reset --hard <commit_id>

-> Di chuyển con trỏ HEAD về vị trí commit reset và loại bỏ tất cả sự thay đổi của file, stage

## Lưu ý
Khi commit đã push lên rồi thì phải ghi lại lịch sử mới cho nhánh

. git push origin branch_name --force