package com.day.parents.parentsday.service;

import com.day.parents.parentsday.model.MemberDTO;
import com.day.parents.parentsday.repository.MappingDAO;
import com.day.parents.parentsday.util.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

	@Autowired
	MappingDAO mappingDAO;

	public int MemberLogin(MemberDTO dto) {
		dto.setUserIp(new Util().getUserIp());
		return mappingDAO.MemberLogin(dto);
	}

	public String sendEmail(JavaMailSender js) {
		String result = "1111";
		try {
			result = new Util().sendMail(js);
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;

	}


}


