package com.codeup.adlister.dao;

import com.codeup.adlister.models.User;
import com.mysql.cj.jdbc.Driver;
import dao.Config;

import java.sql.*;

public class MySQLUsersDao implements Users {

    // 1. Make a connection object and establish the connection
    private Connection connection;

    public MySQLUsersDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(config.getUrl(), config.getUsername(), config.getPassword());
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to database!", e);
        }
    }

    @Override
    public User findByUsername(String username) {
        try {
            String findUsernameQuery = "SELECT * FROM users WHERE username = ?";
            PreparedStatement stmt = connection.prepareStatement(findUsernameQuery);
            stmt.setString(1, username);

            ResultSet rs = stmt.executeQuery();
            rs.next();
            User newUser = new User(rs.getLong("id"), rs.getString("username"), rs.getString("email"), rs.getString("password"));
            return newUser;
        } catch (SQLException e) {
            throw new RuntimeException("Could not find user!");
        }
    }

    @Override
    public Long insert(User user) {
        try {
            // Create query string
            String insertUserQuery = "INSERT INTO users(username, email, password) VALUES(?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(insertUserQuery, Statement.RETURN_GENERATED_KEYS);

            // Set the values of the ?'s
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getEmail());
            stmt.setString(3, user.getPassword());

            stmt.executeUpdate();

            ResultSet rs = stmt.getGeneratedKeys();
            rs.next();
            return rs.getLong(1);

        } catch (SQLException e) {
            throw new RuntimeException("Error adding user to database man!");
        }
    }
}