package com.springlec.springAscent.dto;

public class UDtoLogin {
	String userID;
	String adminCheck;
	
	public UDtoLogin() {
	}

	public UDtoLogin(String userID, String adminCheck) {
		super();
		this.userID = userID;
		this.adminCheck = adminCheck;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getAdminCheck() {
		return adminCheck;
	}

	public void setAdminCheck(String adminCheck) {
		this.adminCheck = adminCheck;
	}
	
	
	
}
