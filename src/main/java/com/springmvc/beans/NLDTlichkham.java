package com.springmvc.beans;

import java.sql.Date;
import java.sql.Time;

public class NLDTlichkham {

	private int id_lichkham;
	private int id_nguoidung;
	private int id_bacsi;
	private Date ngay_kham;
	private Time gio_kham;
	private String trang_thai;
	/**
	 * @return the id_lichkham
	 */
	public int getId_lichkham() {
		return id_lichkham;
	}
	/**
	 * @param id_lichkham the id_lichkham to set
	 */
	public void setId_lichkham(int id_lichkham) {
		this.id_lichkham = id_lichkham;
	}
	/**
	 * @return the id_nguoidung
	 */
	public int getId_nguoidung() {
		return id_nguoidung;
	}
	/**
	 * @param id_nguoidung the id_nguoidung to set
	 */
	public void setId_nguoidung(int id_nguoidung) {
		this.id_nguoidung = id_nguoidung;
	}
	/**
	 * @return the id_bacsi
	 */
	public int getId_bacsi() {
		return id_bacsi;
	}
	/**
	 * @param id_bacsi the id_bacsi to set
	 */
	public void setId_bacsi(int id_bacsi) {
		this.id_bacsi = id_bacsi;
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
