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
public class ThongTinChuyenBayDAO extends BaseDAO<ThongTinChuyenBay> {

    String sql;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public ArrayList<ThongTinChuyenBay> getAll() {
        ArrayList<ThongTinChuyenBay> listTTCB = new ArrayList<>();
        try {
            sql = "select  * from ThongTinChuyenBay ";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ThongTinChuyenBay s = new ThongTinChuyenBay();
                s.setIdCB(rs.getInt(1));
                s.setDateFrom(rs.getDate(2));
                s.setPrice(rs.getFloat(3));
                s.setTotal_seat(rs.getInt(4));
                listTTCB.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listTTCB;
    }

    public ArrayList<ThongTinChuyenBay> selectTop5(int index) {
        ArrayList<ThongTinChuyenBay> listTTCB = new ArrayList<>();
        try {
            sql = "SELECT top 5 *\n"
                    + "FROM ( SELECT    ROW_NUMBER() OVER ( ORDER BY machuyenbay ) AS RowNum, *\n"
                    + "FROM  ThongTinChuyenBay) AS RowConstrainedResult\n"
                    + "WHERE RowNum > ?\n"
                    + "ORDER BY RowNum";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 5);
            rs = ps.executeQuery();
            while (rs.next()) {
                ThongTinChuyenBay s = new ThongTinChuyenBay();
                s.setIdCB(rs.getInt(2));
                s.setDateFrom(rs.getDate(3));
                s.setPrice(rs.getFloat(4));
                s.setTotal_seat(rs.getInt(5));
                listTTCB.add(s);
            }
        } catch (SQLException e) {
        }
        return listTTCB;
    }

    public ThongTinChuyenBay getTTCBByPK(String[] PK) {
        ThongTinChuyenBay s = new ThongTinChuyenBay();
        try {
            sql = "select distinct  * from ThongTinChuyenBay where MaChuyenBay = ? and NgayKhoiHanh = ?";
            ps = connection.prepareStatement(sql);
//            System.out.println(PK[0] + PK[1]);
            ps.setString(1, PK[0]);
            ps.setString(2, PK[1]);
            rs = ps.executeQuery();
            while (rs.next()) {
                s.setIdCB(rs.getInt(1));
                s.setDateFrom(rs.getDate(2));
                s.setPrice(rs.getFloat(3));
                s.setTotal_seat(rs.getInt(4));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

    public int addNew(ThongTinChuyenBay ttcb) {
        int res = 0;
        try {
            sql = "insert into ThongTinChuyenBay(Machuyenbay, NgayKhoiHanh, Giave, soghecon)\n"
                    + "values (?,?,?,?)";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, ttcb.getIdCB());
            ps.setDate(2, ttcb.getDateFrom());
            ps.setFloat(3, ttcb.getPrice());
            ps.setInt(4, ttcb.getTotal_seat());
            res = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return res;
    }

    public int updateTTCB(ThongTinChuyenBay ttcb, String[] PK) {
        int res = 0;
        try {
            sql = "UPDATE ThongTinChuyenBay\n"
                    + "SET MaChuyenBay = ?, \n"
                    + "NgayKhoiHanh = ?, \n"
                    + "GiaVe = ?, \n"
                    + "SoGheCon = ? \n"
                    + "WHERE MaChuyenBay = ? and NgayKhoiHanh = ?;";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, ttcb.getIdCB());
            ps.setDate(2, ttcb.getDateFrom());
            ps.setFloat(3, ttcb.getPrice());
            ps.setInt(4, ttcb.getTotal_seat());
            ps.setString(5, PK[0]);
            ps.setString(6, PK[1]);
            res = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return res;
    }

    public int deleteByPK(String PK) {
        int res = 0;
        try {
            sql = "delete from ThongTinChuyenBay where MaChuyenBay = ? and NgayKhoiHanh = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, PK.split(",")[0]);
            ps.setString(2, PK.split(",")[1]);
            res = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return res;
    }

    public int countTTCB() {
        int res = 0;
        try {
            sql = "select COUNT(*) from ThongTinChuyenBay";
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
        ThongTinChuyenBayDAO ttcbd = new ThongTinChuyenBayDAO();
        ArrayList<ThongTinChuyenBay> listTTCB = ttcbd.selectTop5(1);
        String[] pk = {"6", "2022-12-12"};
        System.out.println(ttcbd.getTTCBByPK(pk));
//        for (ThongTinChuyenBay tt : listTTCB) {
//            System.out.println(tt);
//        }
    }

}
