package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.NLDTlichkham;

public class NLDTadmin {

    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Thêm mới
    public int save(NLDTlichkham p) {
        String sql = "INSERT INTO lichkham (id_lichkham, id_nguoidung, id_bacsi, ngay_kham, gio_kham, trang_thai) VALUES (?, ?, ?, ?, ?, ?)";
        return template.update(sql, p.getId_lich_kham(), p.getId_nguoi_dung(), p.getId_bac_si(), p.getNgay_kham(), p.getGio_kham(), p.getTrang_thai());
    }

    // Cập nhật thông tin 
    public int update(NLDTlichkham p) {
        String sql = "UPDATE lichkham SET ngay_kham=?, gio_kham=?, trang_thai=? WHERE id_lichkham=?";
        return template.update(sql, p.getNgay_kham(), p.getGio_kham(), p.getTrang_thai(), p.getId_lich_kham());
    }

    // Xóa theo ID
    public int delete(int id) {
        String sql = "DELETE FROM lichkham WHERE id_lichkham=?";
        return template.update(sql, id);
    }

    // Lấy theo ID
    public NLDTlichkham getById(int id) {
        String sql = "SELECT * FROM lichkham WHERE id_lichkham=?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<NLDTlichkham>(NLDTlichkham.class));
    }

    // Lấy danh sách tất cả 
    public List<NLDTlichkham> getAll() {
        return template.query("SELECT * FROM lichkham", new RowMapper<NLDTlichkham>() {
            public NLDTlichkham mapRow(ResultSet rs, int row) throws SQLException {
                NLDTlichkham p = new NLDTlichkham();
                p.setId_lich_kham(rs.getInt("id_lichkham"));
                p.setId_nguoi_dung(rs.getInt("id_nguoidung"));
                p.setId_bac_si(rs.getInt("id_bacsi"));
                p.setGio_kham(rs.getTime("gio_kham"));
                p.setNgay_kham(rs.getDate("ngay_kham"));
                p.setTrang_thai(rs.getString("trang_thai"));
                return p;
            }
        });
    }

    // Lấy danh sách (phương thức đã hoàn chỉnh)
    public List<NLDTlichkham> getEmployees() {
        return template.query("SELECT * FROM lichkham", new RowMapper<NLDTlichkham>() {
            @Override
            public NLDTlichkham mapRow(ResultSet rs, int rowNum) throws SQLException {
                NLDTlichkham p = new NLDTlichkham();
                p.setId_lich_kham(rs.getInt("id_lichkham"));
                p.setId_nguoi_dung(rs.getInt("id_nguoidung"));
                p.setId_bac_si(rs.getInt("id_bacsi"));
                p.setGio_kham(rs.getTime("gio_kham"));
                p.setNgay_kham(rs.getDate("ngay_kham"));
                p.setTrang_thai(rs.getString("trang_thai"));
                return p;
            }
        });
    }
}
