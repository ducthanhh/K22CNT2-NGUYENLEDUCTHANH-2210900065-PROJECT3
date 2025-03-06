<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Lịch Khám Mới</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
            margin: 0;
            padding: 0;
        }
        h1 {
            text-align: center;
            margin-top: 20px;
            color: #4CAF50;
        }
        table {
            margin: 20px auto;
            width: 50%;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            padding: 20px;
        }
        td {
            padding: 10px;
        }
        td:first-child {
            text-align: right;
            font-weight: bold;
        }
        input[type="text"], input[type="date"], input[type="time"], input[type="number"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        .back-link {
            display: inline-block;
            margin: 20px auto;
            text-align: center;
            color: #4CAF50;
            text-decoration: none;
            padding: 10px 20px;
            border: 1px solid #4CAF50;
            border-radius: 4px;
            transition: background-color 0.3s, color 0.3s;
        }
        .back-link:hover {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>
    <h1>Thêm Lịch Khám Mới</h1>
    <form:form method="post" action="save" >
        <table>
            <tr>
                <td>ID Người Dùng</td>
                <td><form:input path="id_nguoi_dung" type="number" /></td>
            </tr>
            <tr>
                <td>ID Bác Sĩ</td>
                <td><form:input path="id_bac_si" type="number" /></td>
            </tr>
            <tr>
                <td>Ngày Khám</td>
                <td><form:input path="ngay_kham" type="date" /></td>
            </tr>
            <tr>
                <td>Giờ Khám</td>
                <td><form:input path="gio_kham" type="time" /></td>
            </tr>
            <tr>
                <td>Trạng Thái</td>
                <td><form:input path="trang_thai" /></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Lưu" /></td>
            </tr>
        </table>
    </form:form>
    <div style="text-align: center;">
        <a href="viewform.jsp" class="back-link">Quay Lại</a>
    </div>
</body>
</html>
