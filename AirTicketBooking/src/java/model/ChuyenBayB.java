/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Time;
import java.util.Date;

/**
 *
 * @author admin
 */
public class ChuyenBayB {
    int id;
    String name;
    String localFrom;
    String localTo;
    Time timeFrom;
    Time timeTo;
    int total_seat;    
    String idMB;

    public ChuyenBayB() {
    }

    public ChuyenBayB(int id, String name, String localFrom, String localTo, Time timeFrom, Time timeTo, int total_seat, String idMB) {
        this.id = id;
        this.name = name;
        this.localFrom = localFrom;
        this.localTo = localTo;
        this.timeFrom = timeFrom;
        this.timeTo = timeTo;
        this.total_seat = total_seat;
        this.idMB = idMB;
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

    public int getTotal_seat() {
        return total_seat;
    }

    public void setTotal_seat(int total_seat) {
        this.total_seat = total_seat;
    }

    public String getIdMB() {
        return idMB;
    }

    public void setIdMB(String idMB) {
        this.idMB = idMB;
    }

    @Override
    public String toString() {
        return "ChuyenBayB{" + "id=" + id + ", name=" + name + ", localFrom=" + localFrom + ", localTo=" + localTo + ", timeFrom=" + timeFrom + ", timeTo=" + timeTo + ", total_seat=" + total_seat + ", idMB=" + idMB + '}';
    }
    
    
}
