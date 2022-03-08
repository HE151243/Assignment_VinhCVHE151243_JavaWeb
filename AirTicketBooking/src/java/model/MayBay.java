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
public class MayBay {
    String MaMayBay;
    String TenMayBay;

    public MayBay() {
    }

    public MayBay(String MaMayBay, String TenMayBay) {
        this.MaMayBay = MaMayBay;
        this.TenMayBay = TenMayBay;
    }

    public String getMaMayBay() {
        return MaMayBay;
    }

    public void setMaMayBay(String MaMayBay) {
        this.MaMayBay = MaMayBay;
    }

    public String getTenMayBay() {
        return TenMayBay;
    }

    public void setTenMayBay(String TenMayBay) {
        this.TenMayBay = TenMayBay;
    }

    @Override
    public String toString() {
        return MaMayBay + ", " + TenMayBay ;
    }
    
    
   
    
}
