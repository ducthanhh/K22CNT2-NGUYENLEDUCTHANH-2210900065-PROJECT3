package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springmvc.beans.NLDTlichkham;

@Repository
public class NLDTadmin {

    @Autowired
    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Thêm lịch
    public int save(NLDTlichkham lichkham) {
        String sql = "INSERT INTO lichkham (id_lichkham, id_nguoidung, id_bacsi, ngay_kham, gio_kham, trang_thai) VALUES (?, ?, ?, ?, ?, ?)";
        return template.update(sql, lichkham.getId_lichkham(), lichkham.getId_nguoidung(), lichkham.getId_bacsi(), lichkham.getNgay_kham(), lichkham.getGio_kham(), lichkham.getTrang_thai());
    }

    // Cập nhật lịch
    public int update(NLDTlichkham lichkham) {
        String sql = "UPDATE lichkham SET id_lichkham = ?, id_nguoidung = ?, id_bacsi = ?, ngay_kham = ?, gio_kham = ?, trang_thai = ? WHERE id = ?";
        return template.update(sql, lichkham.getId_lichkham(), lichkham.getId_nguoidung(), lichkham.getId_bacsi(), lichkham.getNgay_kham(), lichkham.getGio_kham(), lichkham.getTrang_thai());
    }

    // Xóa lịch theo ID
    public int delete(int id) {
        String sql = "DELETE FROM lichkham WHERE id = ?";
        return template.update(sql, id);
    }
    

    // Lấy một lịch theo ID
    public NLDTlichkham getLichKhamById(int id) {
        String sql = "SELECT * FROM lichkham WHERE id = ?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(NLDTlichkham.class));
    }

    // Lấy danh sách tất cả lịch
    public List<NLDTlichkham> getAlllichkham() {
        String sql = "SELECT * FROM lichkham";
        return template.query(sql, new RowMapper<NLDTlichkham>() {
            public NLDTlichkham mapRow(ResultSet rs, int row) throws SQLException {
                NLDTlichkham lichkham = new NLDTlichkham();
                lichkham.setId_lichkham(rs.getInt("id_lichkham"));
                lichkham.setId_nguoidung(rs.getInt("id_nguoidung"));
                lichkham.setId_bacsi(rs.getInt("id_bacsi"));
                lichkham.setNgay_kham(rs.getDate("ngay_kham"));
                lichkham.setGio_kham(rs.getTime("gio_kham"));
                lichkham.setTrang_thai(rs.getString("trang_thai"));
                return lichkham;
            }
        });
    }
}
