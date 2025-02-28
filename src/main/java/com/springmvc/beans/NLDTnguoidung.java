package com.springmvc.beans;

import java.sql.Date;

public class NLDTnguoidung {

	private int ID;
	private String Ten;
	private Date NgaySInh;
	private String Sdt;
	private String email;
	private String DiaChi;
	/**
	 * @return the iD
	 */
	public int getID() {
		return ID;
	}
	/**
	 * @param iD the iD to set
	 */
	public void setID(int iD) {
		ID = iD;
	}
	/**
	 * @return the ten
	 */
	public String getTen() {
		return Ten;
	}
	/**
	 * @param ten the ten to set
	 */
	public void setTen(String ten) {
		Ten = ten;
	}
	/**
	 * @return the ngaySInh
	 */
	public Date getNgaySInh() {
		return NgaySInh;
	}
	/**
	 * @param ngaySInh the ngaySInh to set
	 */
	public void setNgaySInh(Date ngaySInh) {
		NgaySInh = ngaySInh;
	}
	/**
	 * @return the sdt
	 */
	public String getSdt() {
		return Sdt;
	}
	/**
	 * @param sdt the sdt to set
	 */
	public void setSdt(String sdt) {
		Sdt = sdt;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	/**
	 * @return the diaChi
	 */
	public String getDiaChi() {
		return DiaChi;
	}
	/**
	 * @param diaChi the diaChi to set
	 */
	public void setDiaChi(String diaChi) {
		DiaChi = diaChi;
	}
	
	
}
