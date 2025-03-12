<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>danh sách </title>
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
    <h1>lịch khám </h1>
    <table>
        <tr>
            <th>ID</th>
            <th>nguoidung</th>
            <th>bacsi</th>
            <th>giokham</th>
            <th>lichkham</th>
            <th>trangthai</th>
          
        </tr>
        <c:forEach var="user" items="${userList}">
            <tr>
                <td>${user.id_lichkham}</td> <!-- Sử dụng thuộc tính đúng -->
                <td>${user.id_nguoidung}</td> <!-- Sử dụng thuộc tính đúng -->
                <td>${user.id_bacsi}</td> <!-- Sử dụng thuộc tính đúng -->
                <td>${user.gio_kham}</td> <!-- Sử dụng thuộc tính đúng -->
                <td>${user.ngay_kham}</td> <!-- Sử dụng thuộc tính đúng -->
                <td>${user.trang_thai}</td> <!-- Sử dụng thuộc tính đúng -->
                <td>
                    <a href="sua/${user.id_lichkham}">Edit</a> | 
                    <a href="xoa/${user.id_lichkham}">Delete</a>
                </td> <!-- Sử dụng thuộc tính đúng -->
            </tr>
        </c:forEach>
    </table>

    <div class="button-container">
        <a href="saveform.jsp">Thêm</a>
        <input type="button" value="Back" onclick="window.history.back();" />
    </div>
</body>
</html>
