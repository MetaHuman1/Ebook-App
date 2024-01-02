package com.DAO;

import com.entty.User;

public interface UserDAO {
    public boolean userRegister(User user);
    public User login(String email, String password);
}
