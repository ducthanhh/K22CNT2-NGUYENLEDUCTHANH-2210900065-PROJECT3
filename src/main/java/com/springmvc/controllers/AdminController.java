package com.springmvc.controllers;

import com.springmvc.beans.NLDTadmins;
import com.springmvc.dao.AdminDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @Autowired
    private AdminDAO adminDAO;

    // Hiển thị danh sách admin
    @GetMapping("/list")
    public String viewAdmins(Model model) {
        List<NLDTadmins> admins = adminDAO.getAllAdmins();
        model.addAttribute("admins", admins);
        return "admin/list";  // Trả về trang admin/list.jsp
    }

    // Hiển thị form thêm admin
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("admin", new NLDTadmins());  // Khởi tạo đối tượng Admin mới
        return "admin/add";  // Trả về trang admin/add.jsp
    }

    // Lưu admin mới
    @PostMapping("/save")
    public String saveAdmin(@ModelAttribute("admin") NLDTadmins admin) {
        try {
            adminDAO.save(admin);
            return "redirect:/admin/list?success=added";
        } catch (Exception e) {
            return "redirect:/admin/list?error=add_failed";
        }
    }

    // Hiển thị form chỉnh sửa admin
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int adminId, Model model) {
    	NLDTadmins admin = adminDAO.getAdminById(adminId);
        if (admin == null) {
            return "redirect:/admin/list?error=notfound";
        }
        model.addAttribute("admin", admin);
        return "admin/edit";  // Trả về trang admin/edit.jsp
    }

    // Cập nhật admin
    @PostMapping("/update")
    public String updateAdmin(@ModelAttribute("admin") NLDTadmins admin) {
        try {
            adminDAO.update(admin);
            return "redirect:/admin/list?success=updated";
        } catch (Exception e) {
            return "redirect:/admin/list?error=update_failed";
        }
    }

    // Xóa admin
    @GetMapping("/delete/{id}")
    public String deleteAdmin(@PathVariable("id") int adminId) {
        try {
            adminDAO.delete(adminId);
            return "redirect:/admin/list?success=deleted";
        } catch (Exception e) {
            return "redirect:/admin/list?error=delete_failed";
        }
    }
}
