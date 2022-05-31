package com.day.parents.parentsday.repository;

import com.day.parents.parentsday.model.MemberDTO;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MappingDAO {
	public String getTime();
	public MemberDTO  getMember();
	public int MemberLogin(MemberDTO dto);

}









