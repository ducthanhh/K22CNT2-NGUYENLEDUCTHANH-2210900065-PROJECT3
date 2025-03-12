<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thông Tin Liên Hệ</title>
   <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3e5f5; /* Màu tím nhạt cho nền */
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #9c27b0; /* Màu tím đậm cho header */
            color: white;
            padding: 15px;
            text-align: center;
        }

        .contact-info {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border: 2px solid #9c27b0; /* Border tím xung quanh */
        }

        h2 {
            color: #9c27b0; /* Màu tím đậm cho tiêu đề */
        }

        p {
            font-size: 16px;
            color: #555;
        }

        .info-item {
            margin-bottom: 20px;
        }

        .info-item label {
            font-weight: bold;
            color: #9c27b0; /* Màu tím cho nhãn */
        }

        .info-item span {
            font-size: 16px;
            color: #333;
        }

        footer {
            background-color: #9c27b0; /* Màu tím cho footer */
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }

        a {
            color: #fff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .back-link {
            background-color: #9c27b0; /* Nút trở lại với màu tím */
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
            display: inline-block;
        }

        .back-link:hover {
            background-color: #6a1b9a; /* Màu tím đậm hơn khi hover */
        }
    </style>
</head>
<body>

    <header>
        <h1>Thông Tin Liên Hệ</h1>
    </header>

    <div class="contact-info">
        <h2>CHÚNG TÔI LUÔN SẴN SÀNG HỖ TRỢ BẠN!</h2>

        <div class="info-item">
            <label>Địa chỉ:</label>
            <span>28 LÊ TRỌNG TẤN,HÀ ĐÔNG,HÀ NỘI</span>
        </div>

        <div class="info-item">
            <label>Số điện thoại:</label>
            <span>09999999</span>
        </div>

        <div class="info-item">
            <label>Email:</label>
            <span>contact.thanhbt@gmail.com</span>
        </div>

        <div class="info-item">
            <label>Website:</label>
            <span><a href="https://www.example.com" target="_blank">www.thanhbt@gmail.com</a></span>
        </div>
    </div>

    <footer>
        <p>AN TOÀN CỦA BẠN LÀ CAM KẾT CỦA CHÚNG TÔI </p>
    </footer>

</body>
</html>
