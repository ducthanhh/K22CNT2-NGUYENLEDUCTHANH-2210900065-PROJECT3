<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giới Thiệu - Website Khám Bệnh</title>
    <style>
    /* Tệp styles.css */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f4f4f4;
}

header {
    background-color: #9b59b6; /* Màu tím */
    padding: 15px 0;
}

nav ul {
    display: flex;
    justify-content: center;
    list-style-type: none;
    padding: 0;
}

nav ul li {
    margin: 0 20px;
}

nav ul li a {
    color: white;
    text-decoration: none;
    font-size: 18px;
    font-weight: bold;
}

nav ul li a:hover {
    text-decoration: underline;
}

.about {
    background-color: #fff;
    padding: 50px 0;
    text-align: center;
    color: #333;
}

.about h1 {
    font-size: 36px;
    color: #9b59b6; /* Màu tím */
    margin-bottom: 20px;
}

.about-content {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 40px;
    max-width: 1000px;
    margin: 0 auto;
    padding: 20px;
}

.image-container {
    max-width: 400px;
}

.about-image {
    width: 100%;
    height: auto;
    border-radius: 8px;
}

.text-container {
    max-width: 600px;
    text-align: left;
}

.text-container p {
    font-size: 18px;
    color: #555;
    line-height: 1.6;
    margin: 20px 0;
}

.text-container ul {
    list-style-type: disc;
    padding-left: 40px;
    font-size: 18px;
    color: #555;
}

.text-container h2 {
    font-size: 28px;
    color: #9b59b6; /* Màu tím */
    margin: 30px 0;
}

footer {
    background-color: #9b59b6; /* Màu tím */
    color: #fff;
    text-align: center;
    padding: 20px 0;
}

footer p {
    margin: 0;
    font-size: 14px;
}
    
    </style>
    </head>
<body>
    <header>
        <nav>
            <ul>
               
            </ul>
        </nav>
    </header>

    <section class="about">
        <div class="container">
            <h1>Giới Thiệu Về Phòng Khám</h1>
            <div class="about-content">
                <div class="image-container">
                    <!-- Gắn ảnh minh họa ở đây -->
                    <img src="https://phongkhamthaihoa.com/upload/filemanager/files/Screenshot%202567-06-17%20at%2009_01_45.png" alt="Ảnh Minh Họa Phòng Khám" class="about-image">
                </div>
                <div class="text-container">
                    <p>Chào mừng bạn đến với <strong>Phòng Khám ĐỨC THÀNH </strong>, nơi cung cấp dịch vụ chăm sóc sức khỏe chuyên nghiệp và tiện lợi. Với đội ngũ bác sĩ giàu kinh nghiệm và trang thiết bị y tế hiện đại, chúng tôi cam kết mang lại cho bạn một trải nghiệm khám bệnh tốt nhất.</p>
                    <p>Chúng tôi chuyên cung cấp các dịch vụ:</p>
                    <ul>
                        <li>Khám sức khỏe tổng quát</li>
                        <li>Khám bệnh chuyên khoa</li>
                        <li>Chẩn đoán và điều trị bệnh lý</li>
                        <li>Phẫu thuật và can thiệp y tế</li>
                    </ul>
                    <h2>Vì Sao Chọn Chúng Tôi?</h2>
                    <p>Phòng Khám XYZ là lựa chọn hàng đầu của nhiều bệnh nhân vì:</p>
                    <ul>
                        <li>Đội ngũ bác sĩ chuyên môn cao, giàu kinh nghiệm</li>
                        <li>Trang thiết bị y tế hiện đại, đảm bảo chẩn đoán chính xác</li>
                        <li>Môi trường khám bệnh sạch sẽ, thoải mái, thân thiện</li>
                        <li>Dịch vụ chăm sóc khách hàng tận tâm, chuyên nghiệp</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="footer-content">
            <p>&copy; 2025 Phòng Khám XYZ - Tất cả các quyền được bảo lưu</p>
        </div>
    </footer>
</body>
</html>