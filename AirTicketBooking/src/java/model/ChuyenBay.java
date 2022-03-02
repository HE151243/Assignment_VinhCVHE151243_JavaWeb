/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;
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

    public ChuyenBay() {
    }

    public ChuyenBay(int id, String name, String localFrom, String localTo, Time timeFrom, Time timeTo, Date dateFrom, float price) {
        this.id = id;
        this.name = name;
        this.localFrom = localFrom;
        this.localTo = localTo;
        this.timeFrom = timeFrom;
        this.timeTo = timeTo;
        this.dateFrom = dateFrom;
        this.price = price;
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
        return "ChuyenBay{" + "id=" + id + ", name=" + name + ", localFrom=" + localFrom + ", localTo=" + localTo + ", timeFrom=" + timeFrom + ", timeTo=" + timeTo + ", dateFrom=" + dateFrom + ", price=" + price + '}';
    }

    
    
}
