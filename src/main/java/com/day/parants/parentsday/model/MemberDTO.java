package com.day.parants.parentsday.model;

import lombok.*;

@Data
@ToString
// 파라메터가 없는 생성자 생성시 사용하는 어노테이션
@NoArgsConstructor
public class MemberDTO {
	
	private int idx;
	private String userIp;
	private String userId;
	private String userPw;
	private String user;
	private String userPnum;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getUserIp() {
		return userIp;
	}
	public void setUserIp(String userIp) {
		this.userIp = userIp;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPw() {
		return userPw;
	}
	public void setUserPw(String userPw) {
		this.userPw = userPw;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getUserPnum() {
		return userPnum;
	}
	public void setUserPnum(String userPnum) {
		this.userPnum = userPnum;
	}
	
	
	

}
