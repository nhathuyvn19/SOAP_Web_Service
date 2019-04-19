package com.dxc.services;

import java.util.ArrayList;
import java.util.List;

import com.dxc.model.User;
import com.dxc.services.impl.UserService;

public class mainTest {
	
	public static void main(String[] args) {
		IUserService userService = new UserService();
		List<User> users = new ArrayList<User>();
		users = userService.getAllUser();
		System.out.println(users.get(1).getName());
	}
}
