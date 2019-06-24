package model;

import java.io.Serializable;

public class User implements Serializable {

    private int id;
    private String username;
    private String password;
    private String passwordagain;
    private String email;


    public String getPasswordagain() {
        return passwordagain;
    }

    public void setPasswordagain(String passwordagain) {
        this.passwordagain = passwordagain;
    }
    public User() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getusername() {
        return username;
    }

    public void setusername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", passwordagain='" + passwordagain + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
