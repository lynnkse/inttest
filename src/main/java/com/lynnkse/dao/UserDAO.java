package com.lynnkse.dao;

import com.lynnkse.entity.User;

import java.util.List;

public interface UserDAO {
    long createUser(User user);
    User updateUser(User user);
    void deleteUser(long id);
    List<User> getAllUsers();
    User getUser(long id);
    List<User> getAllUsers(String userName);
}
