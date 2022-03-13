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
public class ThongTinChuyenBay {
    int idCB;
    Date dateFrom;
    float price;
    int total_seat;

    public ThongTinChuyenBay() {
    }

    public ThongTinChuyenBay(int idCB, Date dateFrom, float price, int total_seat) {
        this.idCB = idCB;
        this.dateFrom = dateFrom;
        this.price = price;
        this.total_seat = total_seat;
    }

    public int getIdCB() {
        return idCB;
    }

    public void setIdCB(int idCB) {
        this.idCB = idCB;
    }

    public Date getDateFrom() {
        return dateFrom;
    }

    public void setDateFrom(Date dateFrom) {
        this.dateFrom = dateFrom;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getTotal_seat() {
        return total_seat;
    }

    public void setTotal_seat(int total_seat) {
        this.total_seat = total_seat;
    }

    @Override
    public String toString() {
        return "ThongTinChuyenBay{" + "idCB=" + idCB + ", dateFrom=" + dateFrom + ", price=" + price + ", total_seat=" + total_seat + '}';
    }
    
    
}
