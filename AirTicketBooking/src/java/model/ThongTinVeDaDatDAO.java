/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
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

    public ThongTinVeDaDat getTicketByMaHanhKhach(String idHK) {
        ThongTinVeDaDat s = new ThongTinVeDaDat();
        try {
            sql = "select * from ThongTinVeDaDat where MaHanhKhach = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, idHK);
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
        ArrayList<ThongTinVeDaDat> lv = vd.getAll();
        System.out.println(vd.getLastedTicket());
        for (ThongTinVeDaDat v : lv) {
            System.out.println(v);
        }
    }

}
