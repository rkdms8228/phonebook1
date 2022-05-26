package com.javaex.dao;

import java.util.List;

import com.javaex.vo.PhoneVo;

public class TestApp {

	public static void main(String[] args) {
		
		PhoneDao phoneDao = new PhoneDao();
		List<PhoneVo> phoneList = phoneDao.personSelect();

		 System.out.println(phoneList.toString());
		
	}

}
