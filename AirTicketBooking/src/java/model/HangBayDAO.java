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

/**
 *
 * @author admin
 */
public class HangBayDAO extends BaseDAO<HangBay> {

    String sql;
    PreparedStatement ps;
    ResultSet rs;

    @Override
    public ArrayList<HangBay> getAll() {
        ArrayList<HangBay> lhb = new ArrayList<>();
        try {
            sql = "select * from HangBay";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                HangBay hb = new HangBay();
                hb.setName(rs.getString(1));
                hb.setLogo(rs.getString(2));
                lhb.add(hb);
            }
        } catch (SQLException e) {

        }
        return lhb;
    }

    public HangBay getHbByName(String name) {
        HangBay hb = new HangBay();
        try {
            sql = "select * from HangBay where TenHang = ?";
            ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            rs = ps.executeQuery();
            while (rs.next()) {
                hb.setName(rs.getString(1));
                hb.setLogo(rs.getString(2));
            }
        } catch (SQLException e) {

        }
        return hb;
    }
    
    public ArrayList<MayBay> getAllMayBay(){
        ArrayList<MayBay> lmb = new ArrayList<>();
        try {
            sql = "select * from MayBay";
            ps = connection.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                MayBay mb = new MayBay();
                mb.setMaMayBay(rs.getString(1));
                mb.setTenMayBay(rs.getString(2));
                lmb.add(mb);
            }
        } catch (SQLException e) {

        }
        return lmb;
    }

    public static void main(String[] args) {
        HangBayDAO hbd = new HangBayDAO();
        ArrayList<HangBay> lhb = hbd.getAll();
        ArrayList<MayBay> lmb = hbd.getAllMayBay();
                for (MayBay m : lmb) {
                    System.out.println(m);
                }

        HangBay hb = hbd.getHbByName("Jetstar Pacific Airlines");
        System.out.println(hb);
    }

}
