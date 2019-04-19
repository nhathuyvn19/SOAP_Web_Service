package com.dxc.services.impl;

import java.util.List;

import com.dxc.dao.impl.UserDao;
import com.dxc.model.User;
import com.dxc.services.IUserService;

public class UserService implements IUserService{
	
	UserDao userDao;
	
	public UserService(){
		userDao = new UserDao();
	}
	
	public List<User> getAllUser() {
		List<User> user = userDao.getAllUser();
		return user;
	}

	public void insertUser(User user) {
		userDao.insertUser(user);
	}
	
	public void updateUser(User user)
	{
		userDao.updateUser(user);
	}

	public User getById(String id) {
		User user = userDao.getById(id);
		return user;
	}
	
	public void deleteUser(String id) {
		userDao.deleteUser(id);
	}
}
