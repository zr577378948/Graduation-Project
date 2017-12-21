package com.zr.beans;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;

public class User {

	private int user_id;
	@Length(max=12,min=3,message="姓名长度在3-12字符之间")
	private String username;
	@Pattern(regexp = "^\\w{6,12}$",message="密码是由数字字母组合的6-12位")
	private String password;
	private String role;
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", username=" + username + ", password=" + password + ", role=" + role
				+ "]";
	}
	
}
