package com.dxc.test;

import java.rmi.RemoteException;

import org.apache.axis2.AxisFault;
import org.junit.Assert;
import org.junit.Test;

import com.dxc.webservices.client.UserServiceStub;
import com.dxc.webservices.client.UserServiceStub.DeleteUser;
import com.dxc.webservices.client.UserServiceStub.GetAllUser;
import com.dxc.webservices.client.UserServiceStub.GetById;
import com.dxc.webservices.client.UserServiceStub.InsertUser;
import com.dxc.webservices.client.UserServiceStub.User;

public class ServiceTest {

	@Test
	public void getAllTest() {
		UserServiceStub serviceStub = null;
		try {
			serviceStub = new UserServiceStub("http://localhost:8080/axis2/services/UserService?wsdl");
		} catch (AxisFault e) {
			e.printStackTrace();
			Assert.fail();
		}
		
		Assert.assertNotNull(serviceStub);
		
		GetAllUser getAllUser = new GetAllUser();
		try {
			Assert.assertNotNull(serviceStub.getAllUser(getAllUser).get_return());
		} catch (RemoteException e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void getByIdTest() throws RemoteException{
		UserServiceStub serviceStub = null;
		try {
			serviceStub = new UserServiceStub("http://localhost:8080/axis2/services/UserService?wsdl");
		} catch (AxisFault e) {
			e.printStackTrace();
			Assert.fail();
		}
		
		Assert.assertNotNull(serviceStub);
		
		GetById getById = new GetById();
		getById.setId("DXC001");
		Assert.assertNotNull(serviceStub.getById(getById).get_return());
	}
	
	@Test
	public void insertTest() throws RemoteException{
		UserServiceStub serviceStub = null;
		try {
			serviceStub = new UserServiceStub("http://localhost:8080/axis2/services/UserService?wsdl");
		} catch (AxisFault e) {
			e.printStackTrace();
			Assert.fail();
		}
		
		Assert.assertNotNull(serviceStub);
		User user = new User();
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
		
		InsertUser insert = new InsertUser();
		insert.setUser(user);
		serviceStub.insertUser(insert);
		
		GetById getById = new GetById();
		getById.setId("DXC000");
		Assert.assertNotNull(serviceStub.getById(getById).get_return());
		
		DeleteUser delete = new DeleteUser();
		delete.setId("DXC000");
		serviceStub.deleteUser(delete);
	}
}
