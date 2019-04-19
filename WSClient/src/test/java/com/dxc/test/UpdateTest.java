package com.dxc.test;

import java.rmi.RemoteException;

import org.apache.axis2.AxisFault;
import org.junit.Assert;
import org.junit.Test;

import com.dxc.webservices.client.UserServiceStub;
import com.dxc.webservices.client.UserServiceStub.GetById;
import com.dxc.webservices.client.UserServiceStub.UpdateUser;
import com.dxc.webservices.client.UserServiceStub.User;

public class UpdateTest {
	
	UserServiceStub serviceStub;
	User user;
	
	public UpdateTest() {
		user = new User();
		user.setId("DXC001");
		user.setAddress("Long An");
		java.sql.Date date = new java.sql.Date(1990 - 02 - 15);
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
	public void testUpdate() throws RemoteException {
		try {
			serviceStub = new UserServiceStub("http://localhost:8080/axis2/services/UserService?wsdl");
		} catch (AxisFault e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			Assert.fail();
		}
		
		Assert.assertNotNull(serviceStub);
		
		GetById getById = new GetById();
		getById.setId("DXC001");
		User userStub = serviceStub.getById(getById).get_return();
		
		userStub.setName(user.getName());
		userStub.setGender(user.getGender());
		userStub.setBirthday(user.getBirthday());
		userStub.setAddress(user.getAddress());
		userStub.setCellPhone(user.getCellPhone());
		userStub.setIdentityCard(user.getIdentityCard());
		userStub.setJob(user.getJob());
		userStub.setNationality(user.getNationality());
		userStub.setEmail(user.getEmail());
		UpdateUser update = new UpdateUser();
		update.setUser(userStub);
		serviceStub.updateUser(update);
		
		getById.setId("DXC001");
		userStub = serviceStub.getById(getById).get_return();
		Assert.assertEquals(userStub.getName(), user.getName());
		Assert.assertEquals(userStub.getAddress(), user.getAddress());
		Assert.assertEquals(userStub.getCellPhone(), user.getCellPhone());
		Assert.assertEquals(userStub.getEmail(), user.getEmail());
		Assert.assertEquals(userStub.getJob(), user.getJob());
		Assert.assertEquals(userStub.getNationality(), user.getNationality());
		Assert.assertEquals(userStub.getGender(), user.getGender());
		Assert.assertEquals(userStub.getIdentityCard(), user.getIdentityCard());
		
		
		
	}
}
