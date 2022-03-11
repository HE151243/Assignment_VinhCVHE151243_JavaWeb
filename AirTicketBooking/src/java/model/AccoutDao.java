/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class AccoutDao extends BaseDAO<Account> {

    String sql;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public ArrayList<Account> getAll() {
        ArrayList<Account> la = new ArrayList<>();
        try {
            sql = "select * from Account ";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Account acc = new Account();
                acc.setUsername(rs.getString(1));
                acc.setPassword(rs.getString(2));
                acc.setStatus(rs.getInt(3));
                la.add(acc);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return la;
    }
    
    public Account getLoginAccount(String u, String p){
        Account acc = new Account();
        try {
            sql = "select * from Account where username = ? and password = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, u);
            ps.setString(2, p);
            rs = ps.executeQuery();
            while (rs.next()) {

                acc.setUsername(rs.getString(1));
                acc.setPassword(rs.getString(2));
                acc.setStatus(rs.getInt(3));
            }
        } catch (SQLException e) {
        }
        return acc;
    }

    public Account getAccoutByUserName(String u) {
        Account acc = new Account();
        try {
            sql = "select * from Account where username = ? ";
            ps = connection.prepareStatement(sql);
            ps.setString(1, u);
            rs = ps.executeQuery();
            while (rs.next()) {

                acc.setUsername(rs.getString(1));
                acc.setPassword(rs.getString(2));
                acc.setStatus(rs.getInt(3));
            }
        } catch (SQLException e) {
        }
        return acc;
    }

    public int addAcount(String u, String p) {
        int res = 0;
        try {
            sql = "insert into Account(username,[password],[status]) \n"
                    + "values (?, ?, '0'); ";
            ps = connection.prepareStatement(sql);
            ps.setString(1, u);
            ps.setString(2, p);
            res = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return res;
    }

    public static void main(String[] args) {
        AccoutDao ad = new AccoutDao();
        Account acc = ad.getLoginAccount("he151243", "123456@");
        System.out.println(acc);
//        ArrayList<Account> la = ad.getAll();
//        for (Account a : la) {
//            System.out.println(a);
//        }
    }
}
