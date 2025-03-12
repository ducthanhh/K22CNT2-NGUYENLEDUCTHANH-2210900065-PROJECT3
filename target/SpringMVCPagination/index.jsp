<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="utf-8"/>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <title>Phòng Khám Đa Khoa ĐỨC THÀNH </title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
</head>
<body class="bg-purple-100">
    <header class="bg-purple-600 text-white py-4">
        <div class="container mx-auto flex justify-between items-center">
            <div class="flex items-center space-x-4">
                <img alt="Clinic Logo" class="h-12" src="https://placehold.co/50x50" />
                <div>
                    <h1 class="text-xl font-bold">PHÒNG KHÁM ĐA KHOA</h1>
                    <h2 class="text-lg">ĐỨC THÀNH </h2>
                </div>
            </div>
            <div class="flex items-center space-x-4">
                <div class="bg-red-500 px-4 py-2 rounded-full text-white text-sm">ONLINE 24/7</div>
                <div class="flex items-center space-x-2">
                    <i class="fas fa-phone-alt"></i>
                    <span class="text-lg font-bold">09999999</span>
                </div>
                <li><a class="bg-yellow-500 px-4 py-2 rounded-full text-white text-sm" href="lichkham/list">ĐẶT LỊCH KHÁM</a></li>
            </div>
        </div>
    </header>
    <nav class="bg-pink-200 py-2">
        <div class="container mx-auto flex justify-between items-center">
            <ul class="flex space-x-4">
                <li><a class="text-gray-700" href="admin/list">TRANG CHỦ</a></li>
                <li><a class="text-gray-700" href="gioithieu.jsp">GIỚI THIỆU</a></li>
                <li><a class="text-gray-700" href="dichvu.jsp">LIÊN HỆ NGAY</a></li>
                <li><a class="text-gray-700" href="lichkham/list">ĐẶT LỊCH KHÁM </a></li>
            </ul>
            <div class="relative">
                <input class="px-4 py-2 rounded-full" placeholder="Tìm kiếm..." type="text"/>
                <button class="absolute right-0 top-0 mt-2 mr-2 text-pink-500">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </div>
    </nav>
    <main class="container mx-auto mt-4">
        <div class="relative bg-white rounded-lg shadow-lg overflow-hidden">
            <div class="flex items-center justify-between">
                <button class="absolute left-0 top-1/2 transform -translate-y-1/2 bg-gray-200 p-2 rounded-full">
                    <i class="fas fa-chevron-left"></i>
                </button>
                <img alt="" class="w-full"  height="200" width="400" src="https://phathai.vn/wp-content/themes/pc/img/pcc3.png" />
                <button class="absolute right-0 top-1/2 transform -translate-y-1/2 bg-gray-200 p-2 rounded-full">
                    <i class="fas fa-chevron-right"></i>
                </button>
            </div>
            <div class="absolute top-0 left-0 p-4 bg-red-500 text-white rounded-full">Miễn phí 100%</div>
            <div class="absolute bottom-0 left-0 p-4 bg-white bg-opacity-75">
                
                
            </div>
            <div class="absolute bottom-0 right-0 p-4 bg-white bg-opacity-75">
                <h3 class="text-xl font-bold">Đăng kí khám</h3>
                <button class="bg-green-500 text-white px-4 py-2 rounded-full">NGAY</button>
            </div>
        </div>
        <div class="mt-4 p-4 bg-pink-100 rounded-lg">
            <h2 class="text-2xl font-bold text-center">UY TÍN-CHẤT LƯỢNG</h2>
            <p class="text-center text-lg">MANG NIỀM TIN</p>
            <div class="flex justify-center items-center space-x-4 mt-4">
                <div class="bg-green-500 text-white px-4 py-2 rounded-full">LIÊN HỆ NGAY</div>
               <li><a class="bg-purple-500 text-white px-4 py-2 rounded-full" href="dangky.jsp">ĐĂNG KÝ</a></li>
            </div>
            <div class="text-center mt-4">
                <p>Liên hệ: 09999999999</p>
            </div>
        </div>
    </main>
    <footer class="bg-purple-600 text-white py-4 mt-4">
        <div class="container mx-auto text-center">
            <p>Mình có thể chat ngay hoặc để lại SĐT/ZALO để được BS giải đáp MIỄN PHÍ.</p>
        </div>
    </footer>
</body>
</html>