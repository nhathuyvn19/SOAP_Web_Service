package com.dxc.test.method;

import static org.junit.Assert.assertEquals;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.dxc.model.User;
import com.dxc.services.impl.UserService;

public class GetAllTest {
	
	List<User> users;
	UserService userService = new UserService();
	
	public GetAllTest(){
		users = new ArrayList<User>();
		users = userService.getAllUser();
	}
	
	@Test
	public void getLenghtTest(){
		int lenghtUsers = users.size();
		User user = new User();
		user.setId("DXC000");
		user.setAddress("Long An");
		java.sql.Date date = (java.sql.Date) new Date(1990-02-15);
		user.setBirthday(date);
		user.setCellPhone("0125436987");
		user.setEmail("nam@gmail.com");
		user.setGender(true);
		user.setIdentityCard(123456789);
		user.setJob("Engineer");
		user.setName("Nam");
		user.setNationality("Lao");
		userService.insertUser(user);
		List<User> usersTest = userService.getAllUser();
		int lenghtUserTest = usersTest.size() - 1;
		assertEquals("Lenght not equal", lenghtUsers, lenghtUserTest);
		userService.deleteUser(user.getId());
	}
}
