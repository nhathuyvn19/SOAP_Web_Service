package com.dxc.test.method;

import static org.junit.Assert.assertEquals;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.junit.Test;

import com.dxc.model.User;
import com.dxc.services.impl.UserService;

public class InsertTest {

	User user;
	UserService userservice;

	public InsertTest() {
		user = new User();
		user.setId("DXC000");
		user.setAddress("Long An");

		java.sql.Date date = new java.sql.Date(1990-05-05);
		user.setBirthday(date);

		user.setCellPhone("0125436987");
		user.setEmail("nam@gmail.com");
		user.setGender(true);
		user.setIdentityCard(123456789);
		user.setJob("Engineer");
		user.setName("Nam");
		user.setNationality("Lao");

		userservice = new UserService();
		
	}

	@Test
	public void checkID() {
		userservice.insertUser(user);
		User userTest = userservice.getById(user.getId());
		assertEquals("Checking book initialization", userTest.getId(), user.getId());
		userservice.deleteUser(user.getId());
	}

	@Test
	public void checkAddress() {
		userservice.insertUser(user);
		User userTest = userservice.getById(user.getId());
		assertEquals("Checking book initialization", userTest.getAddress(), user.getAddress());
		userservice.deleteUser(user.getId());
	}

	@Test
	public void checkCellPhone() {
		userservice.insertUser(user);
		User userTest = userservice.getById(user.getId());
		assertEquals("Checking book initialization", userTest.getCellPhone(), user.getCellPhone());
		userservice.deleteUser(user.getId());
	}

	@Test
	public void checkEmail() {
		userservice.insertUser(user);
		User userTest = userservice.getById(user.getId());
		assertEquals("Checking book initialization", userTest.getEmail(), user.getEmail());
		userservice.deleteUser(user.getId());
	}

	@Test
	public void checkGender() {
		userservice.insertUser(user);
		User userTest = userservice.getById(user.getId());
		assertEquals("Checking book initialization", userTest.getGender(), user.getGender());
		userservice.deleteUser(user.getId());
	}

	@Test
	public void checkIdentityCard() {
		userservice.insertUser(user);
		User userTest = userservice.getById(user.getId());
		assertEquals("Checking book initialization", userTest.getIdentityCard(), user.getIdentityCard());
		userservice.deleteUser(user.getId());
	}

	@Test
	public void checkJob() {
		userservice.insertUser(user);
		User userTest = userservice.getById(user.getId());
		assertEquals("Checking book initialization", userTest.getJob(), user.getJob());
		userservice.deleteUser(user.getId());
	}

	@Test
	public void checkName() {
		userservice.insertUser(user);
		User userTest = userservice.getById(user.getId());
		assertEquals("Checking book initialization", userTest.getName(), user.getName());
		userservice.deleteUser(user.getId());
	}

	@Test
	public void checkNationality() {
		userservice.insertUser(user);
		User userTest = userservice.getById(user.getId());
		assertEquals("Checking book initialization", userTest.getName(), user.getName());
		userservice.deleteUser(user.getId());
	}
}
