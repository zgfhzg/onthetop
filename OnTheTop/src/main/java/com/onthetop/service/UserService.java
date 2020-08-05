package com.onthetop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onthetop.domain.User;
import com.onthetop.repository.UserDao;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;

	public void insertUser(User user) throws Exception {
		userDao.insertUser(user);
	}

}
