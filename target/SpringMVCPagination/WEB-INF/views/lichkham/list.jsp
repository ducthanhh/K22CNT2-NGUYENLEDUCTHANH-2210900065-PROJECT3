<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh Sách Lịch Khám</title>
    <style>
        <style>
        body {
            background-color: #f4e1f1; /* Light purple background */
            color: #4a3c55; /* Dark purple text color for contrast */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #ffffff; /* White color for title */
            text-align: center;
            padding: 20px;
            background-color: #9a7bb5; /* Lighter purple background for header */
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #e2d1f1; /* Very light purple table background */
            color: #4a3c55; /* Dark purple text in table */
        }

        th, td {
            border: 1px solid #d6a7e2; /* Light purple borders */
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #d7aadf; /* Lighter purple for table headers */
            color: #4a3c55; /* Dark purple text in headers */
        }

        tr:nth-child(even) {
            background-color: #f1d9f5; /* Even rows with lighter purple */
        }

        tr:hover {
            background-color: #d7aadf; /* Highlight rows with a bit darker purple on hover */
        }

        a {
            color: #9b6bbf; /* Soft purple color for links */
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline; /* Underline links on hover */
        }

        .button-container {
            text-align: center;
            margin-top: 20px;
        }

        .button-container a {
            background-color: #9a7bb5; /* Lighter purple button background */
            color: #fff; /* White text for button */
            padding: 10px 20px;
            text-decoration: none;
            margin-right: 10px;
            border-radius: 5px;
            border: none;
        }

        .button-container a:hover {
            background-color: #bfa1c7; /* Slightly lighter on hover */
        }

        .button-container input[type="button"] {
            padding: 10px 20px;
            background-color: #9a7bb5;
            color: #fff;
            border: none;
            border-radius: 5px;
        }

        .button-container input[type="button"]:hover {
            background-color: #bfa1c7; /* Slightly lighter on hover */
        }
    </style>
</head>
<body>

    <h1>Danh Sách Lịch Khám</h1>

    <!-- Display success message -->
    <c:if test="${not empty success}">
        <div class="message success">
            <strong>Thành công!</strong> ${success}.
        </div>
    </c:if>

    <!-- Display error message -->
    <c:if test="${not empty error}">
        <div class="message error">
            <strong>Lỗi!</strong> ${error}.
        </div>
    </c:if>

    <!-- Table for displaying Lịch Khám list -->
    <table>
        <thead>
            <tr>
                <th>Lịch Khám</th>
                <th> Người Dùng</th>
                <th>mã Bác Sĩ</th>
                <th>Ngày Khám</th>
                <th>Giờ Khám</th>
                <th>Trạng Thái</th>
                <th>Hành Động</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="lich" items="${list}">
                <tr>
                    <td>${lich.id_lichkham}</td>
                    <td>${lich.id_nguoidung}</td>
                    <td>${lich.id_bacsi}</td>
                    <td>${lich.ngay_kham}</td>
                    <td>${lich.gio_kham}</td>
                    <td>${lich.trang_thai}</td>
                    <td>
                        <a href="${pageContext.request.contextPath}/lichkham/edit/${lich.id_lichkham}">Sửa</a> | 
                        <a href="${pageContext.request.contextPath}/lichkham/delete/${lich.id_lichkham}" onclick="return confirm('Bạn có chắc muốn xóa lịch khám này?');">Xóa</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Link to Add New Lịch Khám -->
    <br>
    <a href="${pageContext.request.contextPath}/lichkham/add">Thêm Lịch Khám Mới</a>

</body>
</html>
