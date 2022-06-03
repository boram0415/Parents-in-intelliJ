package com.day.parents.parentsday.model;

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
}
