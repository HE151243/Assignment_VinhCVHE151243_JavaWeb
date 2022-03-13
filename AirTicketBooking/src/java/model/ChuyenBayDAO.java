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
public class ChuyenBayDAO extends BaseDAO<ChuyenBayB> {

    String sql;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public ArrayList<ChuyenBayB> getAll() {
        ArrayList<ChuyenBayB> flight = new ArrayList<>();
        try {
            sql = "select distinct  * from ChuyenBay ";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ChuyenBayB s = new ChuyenBayB();
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

    public ChuyenBayB getCbByID(String id) {
        ChuyenBayB s = new ChuyenBayB();
        try {
            sql = "select distinct  * from ChuyenBay where MaChuyenBay = ?";
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
                s.setTotal_seat(rs.getInt(7));
                s.setIdMB(rs.getString(8));

            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

    public int deleteById(String id) {
        int res = 0;
        try {
            sql = "delete from ChuyenBay where MaChuyenBay = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            res = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return res;
    }

    public int addNew(ChuyenBayB cb) {
        int res = 0;
        try {
            sql = "insert into ChuyenBay(TenHang, DiemKhoiHanh,DiemDen,ThoiGianKhoiHanh,ThoiGianDen,total_seats,MaMayBay)\n"
                    + "values (?,?,?,?,?,?,?)";
            ps = connection.prepareStatement(sql);
            ps.setString(1, cb.getName());
            ps.setString(2, cb.getLocalFrom());
            ps.setString(3, cb.getLocalTo());
            ps.setTime(4, cb.getTimeFrom());
            ps.setTime(5, cb.getTimeTo());
            ps.setInt(6, cb.getTotal_seat());
            ps.setString(7, cb.getIdMB());

            res = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return res;
    }

    public int updateCB(ChuyenBayB cb) {
        int res = 0;
        try {
            sql = "UPDATE ChuyenBay\n"
                    + "SET TenHang = ?, \n"
                    + "DiemKhoiHanh = ?, \n"
                    + "DiemDen = ?, \n"
                    + "ThoiGianKhoiHanh = ?, \n"
                    + "ThoiGianDen = ?,\n"
                    + "total_seats = ?,\n"
                    + "MaMayBay = ?\n"
                    + "WHERE MaChuyenBay = ?;";
            ps = connection.prepareStatement(sql);
            ps.setString(1, cb.getName());
            ps.setString(2, cb.getLocalFrom());
            ps.setString(3, cb.getLocalTo());
            ps.setTime(4, cb.getTimeFrom());
            ps.setTime(5, cb.getTimeTo());
            ps.setInt(6, cb.getTotal_seat());
            ps.setString(7, cb.getIdMB());
            ps.setInt(8, cb.getId());
            res = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return res;
    }

    public ArrayList<ChuyenBayB> selectTop5(int index) {
        ArrayList<ChuyenBayB> lcb = new ArrayList<>();
        try {
            sql = "SELECT top 5 *\n"
                    + "FROM    ( SELECT    ROW_NUMBER() OVER ( ORDER BY machuyenbay ) AS RowNum, *\n"
                    + "          FROM      ChuyenBay\n"
                    + "          \n"
                    + "        ) AS RowConstrainedResult\n"
                    + "WHERE   RowNum > ?  \n"
                    + "ORDER BY RowNum";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 5);
            rs = ps.executeQuery();
            while (rs.next()) {
                ChuyenBayB s = new ChuyenBayB();
                s.setId(rs.getInt(2));
                s.setName(rs.getString(3));
                s.setLocalFrom(rs.getString(4));
                s.setLocalTo(rs.getString(5));
                s.setTimeFrom(rs.getTime(6));
                s.setTimeTo(rs.getTime(7));
                s.setTotal_seat(rs.getInt(8));
                s.setIdMB(rs.getString(9));
                lcb.add(s);
            }
        } catch (SQLException e) {
        }
        return lcb;
    }

    public int countCB() {
        int res = 0;
        try {
            sql = "select COUNT(*) from ChuyenBay";
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
        ChuyenBayDAO cbd = new ChuyenBayDAO();
        ArrayList<ChuyenBayB> lcb = cbd.selectTop5(15);
        int a = cbd.deleteById("1");
        System.out.println(a);
        ChuyenBayB cb = cbd.getCbByID("100");
        System.out.println(cb);
//        System.out.println(a);
//        for (ChuyenBayB c : lcb) {
//            System.out.println(c);
//        }
    }

}
