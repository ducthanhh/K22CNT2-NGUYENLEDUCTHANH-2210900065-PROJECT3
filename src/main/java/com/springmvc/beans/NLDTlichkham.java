package com.springmvc.beans;

import java.sql.Date;
import java.sql.Time;

public class NLDTlichkham {

	private int id_lich_kham;
	private int id_nguoi_dung;
	private int id_bac_si;
	private Date ngay_kham;
	private Time gio_kham;
	private String trang_thai;
	/**
	 * @return the id_lich_kham
	 */
	public int getId_lich_kham() {
		return id_lich_kham;
	}
	/**
	 * @param id_lich_kham the id_lich_kham to set
	 */
	public void setId_lich_kham(int id_lich_kham) {
		this.id_lich_kham = id_lich_kham;
	}
	/**
	 * @return the id_nguoi_dung
	 */
	public int getId_nguoi_dung() {
		return id_nguoi_dung;
	}
	/**
	 * @param id_nguoi_dung the id_nguoi_dung to set
	 */
	public void setId_nguoi_dung(int id_nguoi_dung) {
		this.id_nguoi_dung = id_nguoi_dung;
	}
	/**
	 * @return the id_bac_si
	 */
	public int getId_bac_si() {
		return id_bac_si;
	}
	/**
	 * @param id_bac_si the id_bac_si to set
	 */
	public void setId_bac_si(int id_bac_si) {
		this.id_bac_si = id_bac_si;
	}
	/**
	 * @return the ngay_kham
	 */
	public Date getNgay_kham() {
		return ngay_kham;
	}
	/**
	 * @param ngay_kham the ngay_kham to set
	 */
	public void setNgay_kham(Date ngay_kham) {
		this.ngay_kham = ngay_kham;
	}
	/**
	 * @return the gio_kham
	 */
	public Time getGio_kham() {
		return gio_kham;
	}
	/**
	 * @param gio_kham the gio_kham to set
	 */
	public void setGio_kham(Time gio_kham) {
		this.gio_kham = gio_kham;
	}
	/**
	 * @return the trang_thai
	 */
	public String getTrang_thai() {
		return trang_thai;
	}
	/**
	 * @param trang_thai the trang_thai to set
	 */
	public void setTrang_thai(String trang_thai) {
		this.trang_thai = trang_thai;
	}
	
}
