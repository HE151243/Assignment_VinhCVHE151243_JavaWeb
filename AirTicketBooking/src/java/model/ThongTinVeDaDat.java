/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author admin
 */
public class ThongTinVeDaDat {
    int mave;
    int machuyenbay;
    int mahanhkhach;
    Date ngaykhoihanh;
    int NL;
    int TE;
    int EB;

    public ThongTinVeDaDat() {
    }

    public ThongTinVeDaDat(int mave, int machuyenbay, int mahanhkhach, Date ngaykhoihanh, int NL, int TE, int EB) {
        this.mave = mave;
        this.machuyenbay = machuyenbay;
        this.mahanhkhach = mahanhkhach;
        this.ngaykhoihanh = ngaykhoihanh;
        this.NL = NL;
        this.TE = TE;
        this.EB = EB;
    }

    public ThongTinVeDaDat(int machuyenbay, int mahanhkhach, Date ngaykhoihanh, int NL, int TE, int EB) {
        this.machuyenbay = machuyenbay;
        this.mahanhkhach = mahanhkhach;
        this.ngaykhoihanh = ngaykhoihanh;
        this.NL = NL;
        this.TE = TE;
        this.EB = EB;
    }
    
    
    
    
    

    public ThongTinVeDaDat(int machuyenbay, int mahanhkhach, Date ngaykhoihanh) {
        this.machuyenbay = machuyenbay;
        this.mahanhkhach = mahanhkhach;
        this.ngaykhoihanh = ngaykhoihanh;
    }
    
    

    public ThongTinVeDaDat(int mave, int machuyenbay, int mahanhkhach, Date ngaykhoihanh) {
        this.mave = mave;
        this.machuyenbay = machuyenbay;
        this.mahanhkhach = mahanhkhach;
        this.ngaykhoihanh = ngaykhoihanh;
    }

    public int getNL() {
        return NL;
    }

    public void setNL(int NL) {
        this.NL = NL;
    }

    public int getTE() {
        return TE;
    }

    public void setTE(int TE) {
        this.TE = TE;
    }

    public int getEB() {
        return EB;
    }

    public void setEB(int EB) {
        this.EB = EB;
    }
    

    public int getMave() {
        return mave;
    }

    public void setMave(int mave) {
        this.mave = mave;
    }

    public int getMachuyenbay() {
        return machuyenbay;
    }

    public void setMachuyenbay(int machuyenbay) {
        this.machuyenbay = machuyenbay;
    }

    public int getMahanhkhach() {
        return mahanhkhach;
    }

    public void setMahanhkhach(int mahanhkhach) {
        this.mahanhkhach = mahanhkhach;
    }

    public Date getNgaykhoihanh() {
        return ngaykhoihanh;
    }

    public void setNgaykhoihanh(Date ngaykhoihanh) {
        this.ngaykhoihanh = ngaykhoihanh;
    }

    @Override
    public String toString() {
        return "ThongTinVeDaDat{" + "mave=" + mave + ", machuyenbay=" + machuyenbay + ", mahanhkhach=" + mahanhkhach + ", ngaykhoihanh=" + ngaykhoihanh + '}';
    }
    
    
    
    
}
