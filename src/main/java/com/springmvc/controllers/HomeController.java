package com.springmvc.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.beans.NLDTlichkham; // Sử dụng NLDTlichkham thay vì NLDTadmin
import com.springmvc.dao.NLDTadmin;

@Controller  
public class HomeController {  
	
    @Autowired  
    NLDTadmin dao; // sẽ tiêm dao từ tệp cấu hình XML  
      
    @GetMapping("/saveform")
    public String showForm(Model model) {
        model.addAttribute("lichKham", new NLDTlichkham()); // Initialize the model attribute
        return "saveform"; // Return the JSP view name
    }

    @PostMapping("/save")
    public String saveLichKham(@ModelAttribute("lichKham") NLDTlichkham lichKham) {
        // Save logic here
        return "redirect:/success"; // Redirect to a success page
    }
    
    /* Cung cấp danh sách người dùng trong đối tượng model */
	@RequestMapping("/viewform")
	public String viewemp(Model m) {
		List<NLDTlichkham> userList = dao.getUser(); // Sử dụng getUser() để lấy danh sách
		m.addAttribute("userList", userList);
		return "viewform";
	}

    @RequestMapping(value="/sua/{id}")  
    public String edit(@PathVariable int id, Model m){  
    	NLDTlichkham user = dao.getProductById(id); // Sử dụng getProductById
        m.addAttribute("command", user);
        return "editform";  
    }  
  
    @PostMapping(value="/luu")  
    public String luu(@ModelAttribute("user") NLDTlichkham user){ // Sử dụng NLDTlichkham
        dao.update(user);  
        return "redirect:/viewform";
    }  
    
    /* Xóa bản ghi theo ID trong URL và chuyển hướng đến /viewform */  
    @RequestMapping(value="/xoa/{id}", method = RequestMethod.GET)  
    public String delete(@PathVariable int id){  
        dao.delete(id);  
        return "redirect:/viewform";  
    } 
}