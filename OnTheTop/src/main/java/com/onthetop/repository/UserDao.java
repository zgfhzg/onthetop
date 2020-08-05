package com.onthetop.repository;

import org.springframework.stereotype.Repository;

import com.onthetop.domain.User;

@Repository
public interface UserDao {

	public void insertUser(User user) throws Exception;
	
}
