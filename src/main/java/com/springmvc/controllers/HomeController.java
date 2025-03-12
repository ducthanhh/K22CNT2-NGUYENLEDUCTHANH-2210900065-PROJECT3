package com.springmvc.controllers;

import com.springmvc.beans.NLDTlichkham;
import com.springmvc.dao.NLDTlichkhamDAO;  
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/lichkham")
public class HomeController {

    @Autowired
    private NLDTlichkhamDAO lichKhamDao;

    @GetMapping("/list")
    public String viewLichKham(Model model) {
        List<NLDTlichkham> lichkhams = lichKhamDao.getAllLichKham();
        model.addAttribute("lichkhams", lichkhams);
        return "lichkham/list"; // Sẽ trả về trang danh sách Lịch Khám
    }
    // Thêm lịch khám
    @GetMapping("/add")
    public String showAddForm(Model model) {
        return "lichkham/add";  // Trả về trang add.jsp
    }

    // Lưu lịch khám
    @PostMapping("/save")
    public String saveLichKham(@ModelAttribute NLDTlichkham lichKham) {
        lichKhamDao.save(lichKham);
        return "redirect:/lichkham/list";  // Quay lại danh sách
    }

    // Sửa lịch khám
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
    	NLDTlichkham lichKham = lichKhamDao.findById(id);  // Lấy thông tin lịch khám từ DB
        model.addAttribute("lichkham", lichKham);
        return "lichkham/edit";  // Trả về trang edit.jsp
    }

    // Cập nhật lịch khám
    @PostMapping("/update")
    public String updateNLDTlichkham(@ModelAttribute NLDTlichkham lichKham) {
        lichKhamDao.update(lichKham);
        return "redirect:/lichkham/list";  // Quay lại danh sách
    }

    // Các phương thức khác như delete, list...
}

