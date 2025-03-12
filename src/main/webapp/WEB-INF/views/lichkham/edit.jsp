<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa Lịch Khám</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .form-container {
            width: 50%;
            margin: 20px auto;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input, select {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
        }
        button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <h1>Sửa Lịch Khám</h1>

    <form action="${pageContext.request.contextPath}/lichkham/update" method="post">
        <div class="form-container">
            <input type="hidden" name="id_lichkham" value="${command.id_lichkham}">

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
                <option value="Đang chờ" <c:if test="${command.trang_thai == 'Đang chờ'}">selected</c:if>>Đang chờ</option>
                <option value="Đã hoàn thành" <c:if test="${command.trang_thai == 'Đã hoàn thành'}">selected</c:if>>Đã hoàn thành</option>
                <option value="Đã hủy" <c:if test="${command.trang_thai == 'Đã hủy'}">selected</c:if>>Đã hủy</option>
            </select>

            <button type="submit">Cập Nhật Lịch Khám</button>
        </div>
    </form>

    <a href="${pageContext.request.contextPath}/lichkham/list">Trở lại danh sách Lịch Khám</a>

</body>
</html>
