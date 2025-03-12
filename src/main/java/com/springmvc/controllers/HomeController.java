package com.springmvc.controllers;

import com.springmvc.beans.NLDTlichkham;
import com.springmvc.dao.NLDTadmin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/lichkham")
public class HomeController {

    @Autowired
    private NLDTadmin lichKhamDao;

    // Hiển thị danh sách tất cả lịch khám
    @GetMapping("/list")
    public String viewLichKham(Model model,
                               @RequestParam(value = "success", required = false) String success,
                               @RequestParam(value = "error", required = false) String error) {
        List<NLDTlichkham> list = lichKhamDao.getAlllichkham();
        model.addAttribute("list", list);
        model.addAttribute("success", success);
        model.addAttribute("error", error);
        return "lichkham/list"; // View sẽ là "lichkham/list.jsp" hoặc "lichkham/list.html"
    }

    // Hiển thị form thêm lịch khám
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("command", new NLDTlichkham());
        return "lichkham/add"; // View sẽ là "lichkham/add.jsp" hoặc "lichkham/add.html"
    }

    // Lưu lịch khám mới
    @PostMapping("/save")
    public String save(@ModelAttribute("command") NLDTlichkham lichkham) {
        try {
            lichKhamDao.save(lichkham);
            return "redirect:/lichkham/list?success=added";
        } catch (Exception e) {
            return "redirect:/lichkham/list?error=add_failed";
        }
    }

    // Hiển thị form chỉnh sửa lịch khám
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable int id, Model model) {
        NLDTlichkham lichkham = lichKhamDao.getLichKhamById(id);
        if (lichkham == null) {
            return "redirect:/lichkham/list?error=notfound";
        }
        model.addAttribute("command", lichkham);
        return "lichkham/edit"; // View sẽ là "lichkham/edit.jsp" hoặc "lichkham/edit.html"
    }

    // Cập nhật lịch khám
    @PostMapping("/update")
    public String update(@ModelAttribute("command") NLDTlichkham lichkham) {
        try {
            lichKhamDao.update(lichkham);
            return "redirect:/lichkham/list?success=updated";
        } catch (Exception e) {
            return "redirect:/lichkham/list?error=update_failed";
        }
    }

    // Xóa lịch khám
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable int id) {
        NLDTlichkham lichkham = lichKhamDao.getLichKhamById(id);
        if (lichkham == null) {
            return "redirect:/lichkham/list?error=notfound";
        }
        try {
            lichKhamDao.delete(id);
            return "redirect:/lichkham/list?success=deleted";
        } catch (Exception e) {
            return "redirect:/lichkham/list?error=delete_failed";
        }
    }

}
