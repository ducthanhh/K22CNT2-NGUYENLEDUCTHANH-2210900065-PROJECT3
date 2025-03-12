package com.springmvc.dao;

import com.springmvc.beans.NLDTadmins;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class AdminDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    // Lấy tất cả các admin
    public List<NLDTadmins> getAllAdmins() {
        String sql = "SELECT * FROM admins";
        return jdbcTemplate.query(sql, (rs, rowNum) -> {
        	NLDTadmins admin = new NLDTadmins();
        	 admin.setAdmin_id(rs.getInt("admin_id"));
            admin.setTaikhoan(rs.getString("taikhoan"));
            admin.setMatkhau(rs.getString("matkhau"));
            admin.setEmail(rs.getString("email"));
            return admin;
        });
    }

    // Lấy admin theo ID
    public NLDTadmins getAdminById(int adminId) {
        try {
            String sql = "SELECT * FROM admins WHERE admin_id = ?";
            return jdbcTemplate.queryForObject(sql, new Object[]{adminId}, (rs, rowNum) -> {
            	NLDTadmins admin = new NLDTadmins();
                admin.setAdmin_id(rs.getInt("admin_id"));
                admin.setTaikhoan(rs.getString("taikhoan"));
                admin.setMatkhau(rs.getString("matkhau"));
                admin.setEmail(rs.getString("email"));
                return admin;
            });
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }

    // Thêm mới admin
    public void save(NLDTadmins admin) {
        String sql = "INSERT INTO admins (taikhoan, matkhau, email) VALUES (?, ?, ?)";
        jdbcTemplate.update(sql, admin.getTaikhoan(), admin.getMatkhau(), admin.getEmail());
    }

    // Cập nhật thông tin admin
    public void update(NLDTadmins admin) {
        String sql = "UPDATE admins SET taikhoan = ?, matkhau = ?, email = ? WHERE admin_id = ?";
        jdbcTemplate.update(sql, admin.getTaikhoan(), admin.getMatkhau(), admin.getEmail(), admin.getAdmin_id());
    }

    // Xóa admin theo ID
    public void delete(int adminId) {
        String sql = "DELETE FROM admins WHERE admin_id = ?";
        jdbcTemplate.update(sql, adminId);
    }
}
