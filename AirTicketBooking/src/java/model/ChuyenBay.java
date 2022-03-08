/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;
import java.sql.Time;

/**
 *
 * @author admin
 */
public class ChuyenBay {
    int id;
    String name;
    String localFrom;
    String localTo;
    Time timeFrom;
    Time timeTo;
    Date dateFrom;
    float price;
    String idMB;

    public ChuyenBay(int id, String name, String localFrom, String localTo, Time timeFrom, Time timeTo, Date dateFrom, float price, String idMB) {
        this.id = id;
        this.name = name;
        this.localFrom = localFrom;
        this.localTo = localTo;
        this.timeFrom = timeFrom;
        this.timeTo = timeTo;
        this.dateFrom = dateFrom;
        this.price = price;
        this.idMB = idMB;
    }

    public String getIdMB() {
        return idMB;
    }

    public void setIdMB(String idMB) {
        this.idMB = idMB;
    }

    public ChuyenBay() {
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocalFrom() {
        return localFrom;
    }

    public void setLocalFrom(String localFrom) {
        this.localFrom = localFrom;
    }

    public String getLocalTo() {
        return localTo;
    }

    public void setLocalTo(String localTo) {
        this.localTo = localTo;
    }

    public Time getTimeFrom() {
        return timeFrom;
    }

    public void setTimeFrom(Time timeFrom) {
        this.timeFrom = timeFrom;
    }

    public Time getTimeTo() {
        return timeTo;
    }

    public void setTimeTo(Time timeTo) {
        this.timeTo = timeTo;
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

    @Override
    public String toString() {
        return id + ", " + name + ", " + localFrom + ", " + localTo + ", " + timeFrom + ", " + timeTo + ", " + dateFrom + ", " + price + ", " + idMB;
    }

    
    
}
