package com.PlanEEZy.model;

public class user {
	private int accid;
	private String username;
	private String email;
	private String password;
	private int cusid;
	private int orgid;
	
	

	//overload constructor with all parameters
	public user(int accid, String username, String email, String password, int cusid, int orgid) {
		super();
		this.accid = accid;
		this.username = username;
		this.email = email;
		this.password = password;
		this.cusid = cusid;
		this.orgid = orgid;
	}


	//getters  and setters
	public int getAccid() {
		return accid;
	}



	public void setAccid(int accid) {
		this.accid = accid;
	}



	public String getUsername() {
		return username;
	}



	public void setUsername(String username) {
		this.username = username;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public int getCusid() {
		return cusid;
	}



	public void setCusid(int cusid) {
		this.cusid = cusid;
	}



	public int getOrgid() {
		return orgid;
	}



	public void setOrgid(int orgid) {
		this.orgid = orgid;
	}

}
	
	
	
