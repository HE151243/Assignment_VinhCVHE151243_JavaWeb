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
public class ChuyenBayDAO extends BaseDAO<ChuyenBayB>{
    String sql;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public ArrayList<ChuyenBayB> getAll() {
        ArrayList<ChuyenBayB> flight = new ArrayList<>();
        try {
            sql = "select distinct  * from ChuyenBay as cb \n"
                    + "inner join ThongTinChuyenBay as ttcb\n"
                    + "on cb.MaChuyenBay = ttcb.MaChuyenBay\n";
            ps = connection.prepareStatement(sql);          
            rs = ps.executeQuery();
            while (rs.next()) {
                ChuyenBayB s = new ChuyenBayB() ;
                s.setId(rs.getInt(1));
                s.setName(rs.getString(2));
                s.setLocalFrom(rs.getString(3));
                s.setLocalTo(rs.getString(4));
                s.setTimeFrom(rs.getTime(5));
                s.setTimeTo(rs.getTime(6));
                s.setTotal_seat(rs.getInt(7));
                s.setIdMB(rs.getString(8));
                
               
                flight.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return flight;
    }
    
    public int deleteById(String id){
        int res = 0;
        try {
            sql = "delete from ChuyenBay where id = ?";
            ps = connection.prepareStatement(sql); 
            ps.setString(1, id);
            res = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return res;
    }
    
    public static void main(String[] args) {
        ChuyenBayDAO cbd = new ChuyenBayDAO();
        ArrayList<ChuyenBayB> lcb = cbd.getAll();
        for (ChuyenBayB c : lcb) {
            System.out.println(c);
        }
    }
    
}
