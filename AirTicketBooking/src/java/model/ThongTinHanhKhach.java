/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author admin
 */
public class ThongTinHanhKhach {
    int id;
    String username;
    String name;
    String address;
    String phone;
    String email;
    String pid;

    public ThongTinHanhKhach() {
    }

    public ThongTinHanhKhach(int id, String username, String name, String address, String phone, String email, String pid) {
        this.id = id;
        this.username = username;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.pid = pid;
    }

    public ThongTinHanhKhach(String username, String name, String address, String phone, String email, String pid) {
        this.username = username;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.pid = pid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPid() {
        return pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

    @Override
    public String toString() {
        return "ThongTinHanhKhach{" + "id=" + id + ", username=" + username + ", name=" + name + ", address=" + address + ", phone=" + phone + ", email=" + email + ", pid=" + pid + '}';
    }
    
    
    
}
