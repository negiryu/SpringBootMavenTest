package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.UserMapper;
import com.example.demo.dto.UserAddRequest;
import com.example.demo.dto.UserSearchRequest;
import com.example.demo.dto.UserUpdateRequest;
import com.example.demo.entity.User;

/**
 * ユーザー情報 Service
 */
@Service
public class UserService {

    /**
     * ユーザー情報 Mapper
     */
    @Autowired
    private UserMapper UserMapper;

    /**
     * ユーザー情報全件検索
     * @return 検索結果
     */
    public List<User> findAll() {
        return UserMapper.findAll();
    }

    /**
     * ユーザー情報主キー検索
     * @return 検索結果
     */
    public User findById(Long id) {
        return UserMapper.findById(id);
    }

    /**
     * ユーザー情報検索
     * @param userSearchRequest リクエストデータ
     * @return 検索結果
     */
    public List<User> search(UserSearchRequest userSearchRequest) {
        return UserMapper.search(userSearchRequest);
    }

    /**
     * ユーザ情報登録
     * @param userAddRequest リクエストデータ
     */
    public void save(UserAddRequest userAddRequest) {
        UserMapper.save(userAddRequest);
    }

    /**
     * ユーザ情報更新
     * @param userEditRequest リクエストデータ
     */
    public void update(UserUpdateRequest userUpdateRequest) {
        UserMapper.update(userUpdateRequest);
    }

    /**
     * ユーザー情報論理削除
     * @param id
     */
    public void delete(Long id) {
        UserMapper.delete(id);
    }
}