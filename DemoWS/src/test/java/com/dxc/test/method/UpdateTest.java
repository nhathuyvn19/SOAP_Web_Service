package com.dxc.test.method;

import static org.junit.Assert.assertEquals;

import java.sql.Date;

import org.junit.Test;

import com.dxc.model.User;
import com.dxc.services.impl.UserService;

public class UpdateTest {

	User user;
	UserService service;

	public UpdateTest() {
		user = new User();
		user.setId("DXC002");
		user.setAddress("Long An");
		user.setCellPhone("0935369785");
		user.setEmail("huy@gmail.com");
		user.setIdentityCard(123456);
		user.setJob("IT");
		user.setNationality("VN");
		
		java.sql.Date date = (java.sql.Date) new Date(1992-12-12);
		user.setBirthday(date);

		user.setGender(true);
		user.setName("Huy");

		service = new UserService();
		service.updateUser(user);
	}

	@Test
	public void checkAddress() {
		User userTest = service.getById(user.getId());
		assertEquals("Checking Address", userTest.getAddress(), user.getAddress());
	}

	@Test
	public void checkCellPhone() {
		User userTest = service.getById(user.getId());
		assertEquals("Checking CellPhone", userTest.getCellPhone(), user.getCellPhone());
	}

	@Test
	public void checkEmail() {
		User userTest = service.getById(user.getId());
		assertEquals("Checking CellPhone", userTest.getEmail(), user.getEmail());
	}

	@Test
	public void checkIdentityCard() {
		User userTest = service.getById(user.getId());
		assertEquals("Checking Address", userTest.getIdentityCard(), user.getIdentityCard());
	}

	@Test
	public void checkJob() {
		User userTest = service.getById(user.getId());
		assertEquals("Checking CellPhone", userTest.getJob(), user.getJob());
	}

	@Test
	public void checkNationality() {
		User userTest = service.getById(user.getId());
		assertEquals("Checking CellPhone", userTest.getNationality(), user.getNationality());
	}

	@Test
	public void checkGender() {
		User userTest = service.getById(user.getId());
		assertEquals("Checking CellPhone", userTest.getGender(), user.getGender());
	}

	@Test
	public void checkName() {
		User userTest = service.getById(user.getId());
		assertEquals("Checking CellPhone", userTest.getName(), user.getName());
	}

}
