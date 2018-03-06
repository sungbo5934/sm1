package com.kh.tc.customer.model.vo;

import java.sql.Date;

public class Customer implements java.io.Serializable {
	private String c_code;
	private String c_id;
	private String c_pwd;
	private String c_email;
	private String c_phone;
	private String c_accout;
	private Date join_date;
	private String end_yn;
	private String certi_name;
	private String token;
	private String logintype;
	private String c_name;
	
	
	
	
	public Customer() {}




	public String getC_code() {
		return c_code;
	}




	public void setC_code(String c_code) {
		this.c_code = c_code;
	}




	public String getC_id() {
		return c_id;
	}




	public void setC_id(String c_id) {
		this.c_id = c_id;
	}




	public String getC_pwd() {
		return c_pwd;
	}




	public void setC_pwd(String c_pwd) {
		this.c_pwd = c_pwd;
	}




	public String getC_email() {
		return c_email;
	}




	public void setC_email(String c_email) {
		this.c_email = c_email;
	}




	public String getC_phone() {
		return c_phone;
	}




	public void setC_phone(String c_phone) {
		this.c_phone = c_phone;
	}




	public String getC_accout() {
		return c_accout;
	}




	public void setC_accout(String c_accout) {
		this.c_accout = c_accout;
	}




	public Date getJoin_date() {
		return join_date;
	}




	public void setJoin_date(Date join_date) {
		this.join_date = join_date;
	}




	public String getEnd_yn() {
		return end_yn;
	}




	public void setEnd_yn(String end_yn) {
		this.end_yn = end_yn;
	}




	public String getCerti_name() {
		return certi_name;
	}




	public void setCerti_name(String certi_name) {
		this.certi_name = certi_name;
	}




	public String getToken() {
		return token;
	}




	public void setToken(String token) {
		this.token = token;
	}




	public String getLogintype() {
		return logintype;
	}




	public void setLogintype(String logintype) {
		this.logintype = logintype;
	}




	public String getC_name() {
		return c_name;
	}




	public void setC_name(String c_name) {
		this.c_name = c_name;
	}




	public Customer(String c_code, String c_id, String c_pwd, String c_email, String c_phone, String c_accout,
			Date join_date, String end_yn, String certi_name, String token, String logintype, String c_name) {
		super();
		this.c_code = c_code;
		this.c_id = c_id;
		this.c_pwd = c_pwd;
		this.c_email = c_email;
		this.c_phone = c_phone;
		this.c_accout = c_accout;
		this.join_date = join_date;
		this.end_yn = end_yn;
		this.certi_name = certi_name;
		this.token = token;
		this.logintype = logintype;
		this.c_name = c_name;
	}




	@Override
	public String toString() {
		return "Customer [c_code=" + c_code + ", c_id=" + c_id + ", c_pwd=" + c_pwd + ", c_email=" + c_email
				+ ", c_phone=" + c_phone + ", c_accout=" + c_accout + ", join_date=" + join_date + ", end_yn=" + end_yn
				+ ", certi_name=" + certi_name + ", token=" + token + ", logintype=" + logintype + ", c_name=" + c_name
				+ "]";
	}


	
	
	
	
}
