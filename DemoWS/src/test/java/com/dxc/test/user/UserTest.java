package com.dxc.test.user;

import static org.junit.Assert.assertEquals;

import java.sql.Date;

import org.junit.Test;

import com.dxc.model.User;

public class UserTest {

	@Test
	public void checkID() {
		String message = "DXC001";
		User user = new User();
		user.setId(message);
		assertEquals("Checking user initialization", message, user.getId());
	}
	
	@Test
	public void checkName() {
		String message = "Jolie";
		User user = new User();
		user.setName(message);
		assertEquals("Checking user initialization", message, user.getName());
	}
	
	@Test
	public void checkGender() {
		boolean message = true;
		User user = new User();
		user.setGender(message);
		assertEquals("Checking user initialization", message, user.getGender());
	}
	
	@Test
	public void checkBirthday() {
		java.sql.Date date = new Date(1990-02-15);
		User user = new User();
		user.setBirthday(date);
		assertEquals("Checking user initialization", date, user.getBirthday());
	}
	
	@Test
	public void checkAddress() {
		String message = "Jolie";
		User user = new User();
		user.setAddress(message);
		assertEquals("Checking user initialization", message, user.getAddress());
	}
	
	@Test
	public void checkIdentityCard() {
		int message = 12345;
		User user = new User();
		user.setIdentityCard(message);
		assertEquals("Checking user initialization", message, user.getIdentityCard());
	}
	
	@Test
	public void checkCellPhone() {
		String message = "Jolie";
		User user = new User();
		user.setCellPhone(message);
		assertEquals("Checking user initialization", message, user.getCellPhone());
	}
	
	@Test
	public void checkEmail() {
		String message = "Jolie";
		User user = new User();
		user.setEmail(message);
		assertEquals("Checking user initialization", message, user.getEmail());
	}
	
	@Test
	public void checkJob() {
		String message = "Jolie";
		User user = new User();
		user.setJob(message);
		assertEquals("Checking user initialization", message, user.getJob());
	}
	
	@Test
	public void checkNationality() {
		String message = "Jolie";
		User user = new User();
		user.setNationality(message);
		assertEquals("Checking user initialization", message, user.getNationality());
	}
}