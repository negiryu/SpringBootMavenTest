package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dto.UserSearchRequest;
import com.example.demo.entity.User;
//import com.example.demo.repository.UserRepository;
import com.example.demo.repository.UserMapper;


/*
 * ユーザー情報 
 */
@Service
public class UserService{
	
//	/**
//	 * ユーザー情報　Repository
//	 */
//	@Autowired
//	UserRepository userRrepository;
	
//	public List<User> searchAll(){
//		//ユーザーテーブルの内容を全検索
//		return userRrepository.findAll();
//	}
	
	/**
	 * ユーザー情報　Mapper
	 */
	@Autowired
	private UserMapper userMapper;
	
	/**
	 * ユーザー情報検索
	 * @param userSearchRequest リクエストデータ
	 * @return 検索結果
	 */
	public User search(UserSearchRequest userSearchRequest) {
		return userMapper.search(userSearchRequest);
	}
}