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
public class ThongTinHanhKhachDAO extends BaseDAO<ThongTinHanhKhach> {

    String sql;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public ArrayList<ThongTinHanhKhach> getAll() {
        ArrayList<ThongTinHanhKhach> ListHK = new ArrayList<>();
        try {
            sql = "select  * from ThongTinHanhKhach ";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ThongTinHanhKhach s = new ThongTinHanhKhach();
                s.setId(rs.getInt(1));
                s.setUsername(rs.getString(2));
                s.setName(rs.getString(3));
                s.setAddress(rs.getString(4));
                s.setPhone(rs.getString(5));
                s.setEmail(rs.getString(6));
                s.setPid(rs.getString(7));
                ListHK.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ListHK;
    }

    public ArrayList<ThongTinHanhKhach> selectTop5(int index) {
        ArrayList<ThongTinHanhKhach> ListHK = new ArrayList<>();
        try {
            sql = "SELECT top 5 *\n"
                    + "FROM ( SELECT    ROW_NUMBER() OVER ( ORDER BY mahanhkhach ) AS RowNum, *\n"
                    + "FROM  ThongTinHanhKhach) AS RowConstrainedResult\n"
                    + "WHERE RowNum > ?\n"
                    + "ORDER BY RowNum";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 5);
            rs = ps.executeQuery();
            while (rs.next()) {
                ThongTinHanhKhach s = new ThongTinHanhKhach();
                s.setId(rs.getInt(2));
                s.setUsername(rs.getString(3));
                s.setName(rs.getString(4));
                s.setAddress(rs.getString(5));
                s.setPhone(rs.getString(6));
                s.setEmail(rs.getString(7));
                s.setPid(rs.getString(8));
                ListHK.add(s);
            }
        } catch (SQLException e) {
        }
        return ListHK;
    }

    public int addNew(ThongTinHanhKhach hk) {
        int res = 0;
        try {
            sql = "insert ThongTinHanhKhach (Username,  Name, DiaChi, SoDienThoai, Email, pID)\n"
                    + "   values (?,?,?,?,?,?)";
            ps = connection.prepareStatement(sql);
            ps.setString(1, hk.getUsername());
            ps.setString(2, hk.getName());
            ps.setString(3, hk.getAddress());
            ps.setString(4, hk.getPhone());
            ps.setString(5, hk.getEmail());
            ps.setString(6, hk.getPid());
            res = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return res;
    }
    
    public ThongTinHanhKhach getHkByID(String id) {
        ThongTinHanhKhach s = new ThongTinHanhKhach();
        try {
            sql = "select distinct  * from ThongTinHanhKhach where MaHanhKhach = ? ";
            ps = connection.prepareStatement(sql);
//            System.out.println(PK[0] + PK[1]);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {              
                s.setId(rs.getInt(1));
                s.setUsername(rs.getString(2));
                s.setName(rs.getString(3));
                s.setAddress(rs.getString(4));
                s.setPhone(rs.getString(5));
                s.setEmail(rs.getString(6));
                s.setPid(rs.getString(7));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }
    
    public int updateTTHK(ThongTinHanhKhach tthk) {
        int res = 0;
        try {
            sql = "UPDATE ThongTinHanhKhach\n"
                    + "SET Username = ?, \n"
                    + "Name = ?, \n"
                    + "DiaChi = ?, \n"
                    + "SoDienThoai = ?, \n"
                    + "Email = ?, \n"
                    + "pID = ? \n"
                    + "WHERE MaHanhKhach = ? ;";
            ps = connection.prepareStatement(sql);
            ps.setString(1, tthk.getUsername());
            ps.setString(2, tthk.getName());
            ps.setString(3, tthk.getAddress());
            ps.setString(4, tthk.getPhone());
            ps.setString(5, tthk.getEmail());
            ps.setString(6, tthk.getPid());
            ps.setInt(7, tthk.getId());
            res = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return res;
    }
    
    public int deleteById(String id) {
        int res = 0;
        try {
            sql = "delete from ThongTinHanhKhach where MaHanhKhach = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            res = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return res;
    }

    public int countTTHK() {
        int res = 0;
        try {
            sql = "select COUNT(*) from ThongTinHanhKhach";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                res = rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return res;
    }

    public static void main(String[] args) {
        ThongTinHanhKhachDAO hkDAO = new ThongTinHanhKhachDAO();
        ArrayList<ThongTinHanhKhach> ListHK = hkDAO.selectTop5(3);
        for (ThongTinHanhKhach hk : ListHK) {
            System.out.println(hk);
        }
    }

}
