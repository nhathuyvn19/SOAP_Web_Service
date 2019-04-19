package com.dxc.test.method;

import org.junit.Test;

import com.dxc.model.User;
import com.dxc.services.impl.UserService;
import static org.junit.Assert.*;

public class DeleteTest {
	
	UserService userService = new UserService();
	User user;
	
	public DeleteTest(){
		user = new User();
		user.setId("DXC000");
		user.setAddress("Long An");
		java.sql.Date date = new java.sql.Date(1990-02-15);
		user.setBirthday(date);
		user.setCellPhone("0125436987");
		user.setEmail("nam@gmail.com");
		user.setGender(true);
		user.setIdentityCard(123456789);
		user.setJob("Engineer");
		user.setName("Nam");
		user.setNationality("Lao");
	}
	
	@Test
	public void testDetele(){
		userService.insertUser(user);
		userService.deleteUser(user.getId());
		assertNull("Don't find user",userService.getById(user.getId()));
	}
}
