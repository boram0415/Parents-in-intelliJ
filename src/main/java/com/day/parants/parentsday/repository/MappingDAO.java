package com.day.parants.parentsday.repository;

import com.day.parants.parentsday.model.MemberDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MappingDAO {
	public String getTime();
	public MemberDTO  getMember();
	public int MemberLogin(MemberDTO dto);

}









