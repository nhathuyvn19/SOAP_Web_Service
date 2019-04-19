package com.dxc.services;

import java.util.List;

import com.dxc.model.User;

public interface IUserService {
	
	public List<User> getAllUser();
	
	public User getById(String id);
	
	public void insertUser(User user);
	
	public void updateUser(User user);
	
	public void deleteUser(String id);
}
