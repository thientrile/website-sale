# Website Bán Hàng

## Giới thiệu
Đây là dự án website bán hàng được xây dựng bằng PHP, sử dụng kiến trúc MVC để quản lý các chức năng như quản lý sản phẩm, giỏ hàng, người dùng, và đơn hàng. Website hướng tới việc cung cấp giải pháp bán hàng trực tuyến cho các cửa hàng vừa và nhỏ.

## Tính năng chính
- Quản lý sản phẩm: Thêm, sửa, xóa, hiển thị sản phẩm.
- Quản lý giỏ hàng và thanh toán.
- Quản lý người dùng: Đăng ký, đăng nhập, phân quyền admin và khách hàng.
- Quản lý đơn hàng, hóa đơn, thống kê doanh thu.
- Gửi email xác nhận đơn hàng và đăng ký tài khoản.
- Giao diện thân thiện, dễ sử dụng, hỗ trợ responsive.

## Cấu trúc thư mục
- `controller/`: Chứa các file điều khiển logic nghiệp vụ.
- `model/`: Chứa các file kết nối và xử lý dữ liệu với database.
- `view/`: Chứa các file giao diện hiển thị cho người dùng.
- `assets/`: Chứa hình ảnh, CSS, JS, fonts, v.v.
- `Mysql/`: Chứa các file cấu trúc và dữ liệu mẫu cho database.
- `vendor/`: Thư viện bên ngoài (Bootstrap, v.v.).

## Yêu cầu hệ thống
- PHP >= 7.x
- MySQL
- Web server (XAMPP, WAMP, hoặc tương tự)

## Hướng dẫn cài đặt
1. Clone dự án về máy:
   ```
   git clone https://github.com/thientrile/website-sale.git
   ```
2. Import các file SQL trong thư mục `Mysql/` vào database MySQL.
3. Cấu hình kết nối database trong file `model/connect.models.php`.
4. Chạy website trên localhost qua web server.

## Tác giả
- Thien Tri Le

## License
Dự án sử dụng cho mục đích học tập và tham khảo.
