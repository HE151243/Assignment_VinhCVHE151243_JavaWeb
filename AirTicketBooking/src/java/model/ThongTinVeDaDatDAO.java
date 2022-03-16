/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author admin
 */
public class ThongTinVeDaDatDAO extends BaseDAO<ThongTinVeDaDat> {

    String sql;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public ArrayList<ThongTinVeDaDat> getAll() {
        ArrayList<ThongTinVeDaDat> lv = new ArrayList<>();
        try {
            sql = "select * from ThongTinVeDaDat";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ThongTinVeDaDat s = new ThongTinVeDaDat();
                s.setMave(rs.getInt(1));
                s.setMahanhkhach(rs.getInt(2));
                s.setMachuyenbay(rs.getInt(3));
                s.setNgaykhoihanh(rs.getDate(4));
                s.setNL(rs.getInt(5));
                s.setTE(rs.getInt(6));
                s.setEB(rs.getInt(7));
                lv.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lv;
    }
    
    public ThongTinVeDaDat getVeByID(String id) {
        ThongTinVeDaDat s = new ThongTinVeDaDat();
        try {
            sql = "select * from ThongTinVeDaDat where mave = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                s.setMave(rs.getInt(1));
                s.setMahanhkhach(rs.getInt(2));
                s.setMachuyenbay(rs.getInt(3));
                s.setNgaykhoihanh(rs.getDate(4));
                s.setNL(rs.getInt(5));
                s.setTE(rs.getInt(6));
                s.setEB(rs.getInt(7));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }

    public int addNew(ThongTinVeDaDat ttv) {
        int res = 0;
        try {
            sql = "insert into ThongTinVeDaDat (MaHanhKhach, MaChuyenBay, NgayKhoiHanh,NguoiLon,TreEm,EmBe)\n"
                    + "   values (?,?,?,?,?,?)";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, ttv.getMahanhkhach());
            ps.setInt(2, ttv.getMachuyenbay());
            ps.setDate(3, ttv.getNgaykhoihanh());
            ps.setInt(4, ttv.getNL());
            ps.setInt(5, ttv.getTE());
            ps.setInt(6, ttv.getEB());
            res = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return res;
    }
    
    public ArrayList<ThongTinVeDaDat> selectTop5(int index) {
        ArrayList<ThongTinVeDaDat> lv = new ArrayList<>();
        try {
            sql = "SELECT top 5 *\n"
                    + "FROM ( SELECT    ROW_NUMBER() OVER ( ORDER BY mave ) AS RowNum, *\n"
                    + "FROM  ThongTinVeDaDat) AS RowConstrainedResult\n"
                    + "WHERE RowNum > ?\n"
                    + "ORDER BY RowNum";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, (index - 1) * 5);
            rs = ps.executeQuery();
            while (rs.next()) {
                ThongTinVeDaDat s = new ThongTinVeDaDat();
                s.setMave(rs.getInt(2));
                s.setMahanhkhach(rs.getInt(3));
                s.setMachuyenbay(rs.getInt(4));
                s.setNgaykhoihanh(rs.getDate(5));
                s.setNL(rs.getInt(6));
                s.setTE(rs.getInt(7));
                s.setEB(rs.getInt(8));
                lv.add(s);
            }
        } catch (SQLException e) {
        }
        return lv;
    }
    
    public ArrayList<Date> getDateCB() {
        ThongTinVeDaDat s = new ThongTinVeDaDat();
        ArrayList<Date> ld = new ArrayList<>();
        Date date = null;
        try {
            sql = "select distinct NgayKhoiHanh from ThongTinChuyenBay";
            ps = connection.prepareStatement(sql);          
            rs = ps.executeQuery();
            while (rs.next()) {
                date = rs.getDate(1);
                ld.add(date);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ld;
    }
    
    public ArrayList<Integer> getIdCB_TT(){
        ArrayList<Integer> lid = new ArrayList<>();
        try {
            sql = "select distinct machuyenbay from ThongTinChuyenBay";
            ps = connection.prepareStatement(sql);
            
            rs = ps.executeQuery();
            while (rs.next()) {
                int a = rs.getInt(1);
                lid.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lid;
    }
    
    public ArrayList<Integer> getIdHK_TT(){
        ArrayList<Integer> lid = new ArrayList<>();
        try {
            sql = "select distinct mahanhkhach from ThongTinHanhKhach";
            ps = connection.prepareStatement(sql);
            
            rs = ps.executeQuery();
            while (rs.next()) {
                int a = rs.getInt(1);
                lid.add(a);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lid;
    }

    public ThongTinVeDaDat getTicketByMaHanhKhach(int idHK) {
        ThongTinVeDaDat s = new ThongTinVeDaDat();
        try {
            sql = "select * from ThongTinVeDaDat where MaHanhKhach = ?";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, idHK);
            rs = ps.executeQuery();
            while (rs.next()) {
                s.setMave(rs.getInt(1));
                s.setMahanhkhach(rs.getInt(2));
                s.setMachuyenbay(rs.getInt(3));
                s.setNgaykhoihanh(rs.getDate(4));
                s.setNL(rs.getInt(5));
                s.setTE(rs.getInt(6));
                s.setEB(rs.getInt(7));
            }
        } catch (SQLException ex) {
            Logger.getLogger(AirDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return s;
    }
    
    public int updateTTV(ThongTinVeDaDat ttv) {
        int res = 0;
        try {
            sql = "UPDATE ThongTinVeDaDat\n"
                    + "SET MaHanhKhach = ?, \n"
                    + "MaChuyenBay = ?, \n"
                    + "NgayKhoiHanh = ?, \n"
                    + "NguoiLon = ?, \n"
                    + "TreEm = ?, \n"
                    + "EmBe = ? \n"
                    + "WHERE MaVe = ?;";
            ps = connection.prepareStatement(sql);
            ps.setInt(1, ttv.getMahanhkhach());
            ps.setInt(2, ttv.getMachuyenbay());
            ps.setDate(3, ttv.getNgaykhoihanh());
            ps.setInt(4, ttv.getNL());
            ps.setInt(5, ttv.getTE());
            ps.setInt(6, ttv.getEB());
            ps.setInt(7, ttv.getMave());
            res = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return res;
    }
    
    public int deleteById(String id) {
        int res = 0;
        try {
            sql = "delete from ThongTinVeDaDat where MaVe = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            res = ps.executeUpdate();
        } catch (SQLException e) {
        }
        return res;
    }
    
    public int countTTCB() {
        int res = 0;
        try {
            sql = "select COUNT(*) from ThongTinVeDaDat";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                res = rs.getInt(1);
            }
        } catch (SQLException e) {
        }
        return res;
    }

    public int getLastedTicket() {
        int res = 0;
        try {
            sql = "select MAX(Mave) from ThongTinVeDaDat";
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
        ThongTinVeDaDatDAO vd = new ThongTinVeDaDatDAO();
        ArrayList<Integer> a = vd.getIdHK_TT();
        System.out.println(vd.getVeByID("1"));
//        for (Integer i : a) {
//            System.out.println(i);
//        }
        System.out.println(vd.getLastedTicket());
        
    }

}
