<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Lịch Khám</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3e5f5; /* Màu tím nhạt */
            text-align: center;
        }
        h2 {
            color: #6a1b9a; /* Màu tím đậm */
        }
        form {
            background-color: #ffffff;
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border: 2px solid #9c27b0;
        }
        input, textarea {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #9c27b0;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #9c27b0;
            color: white;
            font-weight: bold;
            border: none;
            padding: 10px;
            cursor: pointer;
            transition: 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #6a1b9a;
        }
    </style>
</head>
<body>

    <h1>Thêm Lịch Khám</h1>

    <!-- Hiển thị thông báo thành công hoặc lỗi -->
    <c:if test="${not empty success}">
        <div class="message success">
            <strong>Thành công!</strong> ${success}.
        </div>
    </c:if>
    <c:if test="${not empty error}">
        <div class="message error">
            <strong>Lỗi!</strong> ${error}.
        </div>
    </c:if>

    <form action="${pageContext.request.contextPath}/lichkham/save" method="post">
        <div class="form-container">
            <label for="id_lichkham">ID Lịch Khám</label>
            <input type="text" name="id_lichkham" id="id_lichkham" value="${command.id_lichkham}" required>

            <label for="id_nguoidung">ID Người Dùng</label>
            <input type="text" name="id_nguoidung" id="id_nguoidung" value="${command.id_nguoidung}" required>

            <label for="id_bacsi">ID Bác Sĩ</label>
            <input type="text" name="id_bacsi" id="id_bacsi" value="${command.id_bacsi}" required>

            <label for="ngay_kham">Ngày Khám</label>
            <input type="date" name="ngay_kham" id="ngay_kham" value="${command.ngay_kham}" required>

            <label for="gio_kham">Giờ Khám</label>
            <input type="time" name="gio_kham" id="gio_kham" value="${command.gio_kham}" required>

            <label for="trang_thai">Trạng Thái</label>
            <select name="trang_thai" id="trang_thai" required>
                <option value="Đang chờ" ${command.trang_thai == 'Đang chờ' ? 'selected' : ''}>Đang chờ</option>
                <option value="Đã hoàn thành" ${command.trang_thai == 'Đã hoàn thành' ? 'selected' : ''}>Đã hoàn thành</option>
                <option value="Đã hủy" ${command.trang_thai == 'Đã hủy' ? 'selected' : ''}>Đã hủy</option>
            </select>

            <button type="submit">Lưu Lịch Khám</button>
        </div>
    </form>

    <a href="${pageContext.request.contextPath}/lichkham/list">Trở lại danh sách Lịch Khám</a>

</body>
</html>
