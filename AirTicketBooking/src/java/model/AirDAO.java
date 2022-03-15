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
import java.util.Collections;
import java.util.Comparator;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class AirDAO extends BaseDAO<ChuyenBay> {

    String sql;
    PreparedStatement ps;
    ResultSet rs;

    public ArrayList<ChuyenBay> getAllCb(String localFrom, String localTo, String dateFrom, int totalSeats) {
        ArrayList<ChuyenBay> flight = new ArrayList<>();
        try {
            sql = "select distinct  * from ChuyenBay as cb \n"
                    + "inner join ThongTinChuyenBay as ttcb\n"
                    + "on cb.MaChuyenBay = ttcb.MaChuyenBay\n"
                    + "where DiemKhoiHanh = ? and DiemDen = ? "
                    + "and NgayKhoiHanh = ? and SoGheCon > ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1,localFrom);
            ps.setString(2,localTo);
            ps.setString(3,dateFrom);
            ps.setInt(4,totalSeats);
            rs = ps.executeQuery();
            while (rs.next()) {
                ChuyenBay s = new ChuyenBay();
                s.setId(rs.getInt(1));
                s.setName(rs.getString(2));
                s.setLocalFrom(rs.getString(3));
                s.setLocalTo(rs.getString(4));
                s.setTimeFrom(rs.getTime(5));
                s.setTimeTo(rs.getTime(6));
                s.setIdMB(rs.getString(8));
                s.setDateFrom(rs.getDate(10));
                s.setPrice(rs.getFloat(11));
               
                flight.add(s);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return flight;
    }
    
    public ArrayList<ChuyenBay> getAllReturn(String localFrom, String localTo, String dateFrom, int totalSeats) {
        ArrayList<ChuyenBay> flight = new ArrayList<>();
        try {
            sql = "select distinct  * from ChuyenBay as cb \n"
                    + "inner join ThongTinChuyenBay as ttcb\n"
                    + "on cb.MaChuyenBay = ttcb.MaChuyenBay\n"
                    + "where DiemKhoiHanh = ? and DiemDen = ? "
                    + "and NgayKhoiHanh = ? and SoGheCon > ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1,localTo);
            ps.setString(2,localFrom);
            ps.setString(3,dateFrom);
            ps.setInt(4,totalSeats);
            rs = ps.executeQuery();
            while (rs.next()) {
                ChuyenBay s = new ChuyenBay();
                s.setId(rs.getInt(1));
                s.setName(rs.getString(2));
                s.setLocalFrom(rs.getString(3));
                s.setLocalTo(rs.getString(4));
                s.setTimeFrom(rs.getTime(5));
                s.setTimeTo(rs.getTime(6));
                s.setIdMB(rs.getString(8));
                s.setDateFrom(rs.getDate(10));
                s.setPrice(rs.getFloat(11));
               
                flight.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return flight;
    }
    
    public MayBay getMBbyID(String id){
        MayBay mb = new MayBay();
        try {
            sql = "select * from MayBay where MaMayBay = ?";
            ps = connection.prepareStatement(sql);   
            ps.setString(1, id);
            rs = ps.executeQuery();
            while(rs.next()){
                mb.setMaMayBay(rs.getString(1));
                mb.setTenMayBay(rs.getString(2));
            }
        } catch (Exception e) {
        }
        return mb;
    }

    

    @Override
    public ArrayList<ChuyenBay> getAll() {
        ArrayList<ChuyenBay> flight = new ArrayList<>();
        try {
            sql = "select distinct  * from ChuyenBay as cb \n"
                    + "inner join ThongTinChuyenBay as ttcb\n"
                    + "on cb.MaChuyenBay = ttcb.MaChuyenBay\n";
            ps = connection.prepareStatement(sql);          
            rs = ps.executeQuery();
            while (rs.next()) {
                ChuyenBay s = new ChuyenBay();
                s.setId(rs.getInt(1));
                s.setName(rs.getString(2));
                s.setLocalFrom(rs.getString(3));
                s.setLocalTo(rs.getString(4));
                s.setTimeFrom(rs.getTime(5));
                s.setTimeTo(rs.getTime(6));
                s.setIdMB(rs.getString(8));
                s.setDateFrom(rs.getDate(10));
                s.setPrice(rs.getFloat(11));
               
                flight.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return flight;
    }
    
    public ChuyenBay getAllById(String id) {
        ChuyenBay s = new ChuyenBay();
        try {
            sql = "select distinct  * from ChuyenBay as cb \n"
                    + "inner join ThongTinChuyenBay as ttcb\n"
                    + "on cb.MaChuyenBay = ttcb.MaChuyenBay where cb.MaChuyenBay =?\n";
            ps = connection.prepareStatement(sql);  
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                
                s.setId(rs.getInt(1));
                s.setName(rs.getString(2));
                s.setLocalFrom(rs.getString(3));
                s.setLocalTo(rs.getString(4));
                s.setTimeFrom(rs.getTime(5));
                s.setTimeTo(rs.getTime(6));
                s.setIdMB(rs.getString(8));
                s.setDateFrom(rs.getDate(10));
                s.setPrice(rs.getFloat(11));
               
                
            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }
    
    
    
    public static void main(String[] args) throws SQLException {
        AirDAO ad = new AirDAO();
        ChuyenBay cb = ad.getAllById("8");
        System.out.println(cb);
        MayBay mb = ad.getMBbyID("DC10");
        System.out.println(mb);
        
        
        
        
    }
}
