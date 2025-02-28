package com.springmvc.beans;

public class NLDTadmins {

	private int admin_id;             
    private String taikhoan;  
    private String matkhau;          
    private String email;
	/**
	 * @return the admin_id
	 */
	public int getAdmin_id() {
		return admin_id;
	}
	/**
	 * @param admin_id the admin_id to set
	 */
	public void setAdmin_id(int admin_id) {
		this.admin_id = admin_id;
	}
	/**
	 * @return the taikhoan
	 */
	public String getTaikhoan() {
		return taikhoan;
	}
	/**
	 * @param taikhoan the taikhoan to set
	 */
	public void setTaikhoan(String taikhoan) {
		this.taikhoan = taikhoan;
	}
	/**
	 * @return the matkhau
	 */
	public String getMatkhau() {
		return matkhau;
	}
	/**
	 * @param matkhau the matkhau to set
	 */
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
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

}
