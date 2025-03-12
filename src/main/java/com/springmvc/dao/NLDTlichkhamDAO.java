package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springmvc.beans.NLDTlichkham;
@Repository
public class NLDTlichkhamDAO {

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public List<NLDTlichkham> getAllLichKham() {
        String sql = "SELECT * FROM lichkham";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(NLDTlichkham.class));
    }
    public void save(NLDTlichkham lichKham) {
        // Code lưu lịch khám vào cơ sở dữ liệu
    }

    public NLDTlichkham findById(int id) {
        // Code lấy lịch khám từ cơ sở dữ liệu theo id
    }

    public void update(NLDTlichkham lichKham) {
        // Code cập nhật lịch khám vào cơ sở dữ liệu
    }
}

