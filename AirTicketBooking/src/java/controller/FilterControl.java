/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.sun.org.apache.bcel.internal.generic.AALOAD;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AirDAO;
import model.ChuyenBay;

/**
 *
 * @author admin
 */
public class FilterControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    public ArrayList<ChuyenBay> sortCb(ArrayList<ChuyenBay> lcb, String type) {
        if (type.equals("totaltime")) {
            Collections.sort(lcb, new Comparator<ChuyenBay>() {
                @Override
                public int compare(ChuyenBay o1, ChuyenBay o2) {
                    int timeTo1 = Integer.parseInt(o1.getTimeTo().toString().split(":")[0]) * 60
                            + Integer.parseInt(o1.getTimeTo().toString().split(":")[1]);
                    int timeFrom1 = Integer.parseInt(o1.getTimeFrom().toString().split(":")[0]) * 60
                            + Integer.parseInt(o1.getTimeFrom().toString().split(":")[1]);
                    int totalTime1 = timeTo1 - timeFrom1;

                    int timeTo2 = Integer.parseInt(o2.getTimeTo().toString().split(":")[0]) * 60
                            + Integer.parseInt(o2.getTimeTo().toString().split(":")[1]);
                    int timeFrom2 = Integer.parseInt(o2.getTimeFrom().toString().split(":")[0]) * 60
                            + Integer.parseInt(o2.getTimeFrom().toString().split(":")[1]);
                    int totalTime2 = timeTo2 - timeFrom2;

                    return totalTime1 > totalTime2 ? 1 : -1;
                }
            });
        }

        if (type.equals("price")) {
            Collections.sort(lcb, new Comparator<ChuyenBay>() {
                @Override
                public int compare(ChuyenBay o1, ChuyenBay o2) {
                    return o1.getPrice() > o2.getPrice() ? 1 : -1;
                }
            });
        }

        if (type.equals("timeFrom")) {
            Collections.sort(lcb, new Comparator<ChuyenBay>() {
                @Override
                public int compare(ChuyenBay o1, ChuyenBay o2) {
                    int timeFrom1 = Integer.parseInt(o1.getTimeFrom().toString().split(":")[0]) * 60
                            + Integer.parseInt(o1.getTimeFrom().toString().split(":")[1]);
                    int timeFrom2 = Integer.parseInt(o2.getTimeFrom().toString().split(":")[0]) * 60
                            + Integer.parseInt(o2.getTimeFrom().toString().split(":")[1]);
                    return timeFrom1 > timeFrom2 ? 1 : -1;
                }
            });
        }

        if (type.equals("brand")) {
            Collections.sort(lcb, new Comparator<ChuyenBay>() {
                @Override
                public int compare(ChuyenBay o1, ChuyenBay o2) {
                    return o1.getName().compareTo(o2.getName());
                }
            });
        }
        return lcb;
    }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        String inValue = request.getParameter("inputValue");
        String localFrom = request.getParameter("localFrom");
        String localTo = request.getParameter("localTo");
        String dateFrom = request.getParameter("dateFrom");
        String dateReturn = request.getParameter("dateReturn");
        String totalSeat = request.getParameter("totalSeat");
        String cus = request.getParameter("cus");
        String trip = request.getParameter("service");
//        response.getWriter().print(totalSeat);
//        int slot = Integer.parseInt(totalSeat);
        AirDAO ad = new AirDAO();
        ArrayList<ChuyenBay> lcb = ad.getAllCb(localFrom, localTo, dateFrom, Integer.parseInt(totalSeat));
        ArrayList<ChuyenBay> lcbReturn = ad.getAllCb(localTo, localFrom, dateReturn, Integer.parseInt(totalSeat));

        ArrayList<ChuyenBay> lcb1 = ad.getAll();
        ArrayList<ChuyenBay> lcbSorted1 = sortCb(lcb, inValue);
        ArrayList<ChuyenBay> lcbSorted2 = sortCb(lcbReturn, inValue);
        int i = 1;
        String tripSTT = request.getParameter("tripSTT");

        if (trip.equals("oneWay")) {
            for (ChuyenBay c : lcbSorted1) {
                out.println("<tr>\n"
                        + "<td>" + i++ + "</td>\n"
                        + "<td>" + c.getName() + "</td>\n"
                        + "<td>" + c.getTimeFrom() + "</td>\n"
                        + "<td>" + c.getTimeTo() + "</td>\n"
                        + "<td colspan=\"2\">" + c.getDateFrom() + "</td>\n"
                        + "<td>" + c.getPrice() + "00đ</td>\n");
                if (tripSTT == null) {
                    out.println("<td><button class=\"btn-danger\" style=\"border-radius: 6px; font-size: 15px\" name=\"bookingInfo\" value=\"" + c + "," + cus + "\"> Chọn Vé</button></td>"
                            + "</tr>");
                } else {
                    out.println("<td><button class=\"btn-danger\" style=\"border-radius: 6px; \" name=\"bookingInfo\" value=\"" + c + "," + cus + "\"> Chọn Vé</button></td>"
                            + "</tr>");
                }
            }
        }

        if (trip.equals("round")) {
            for (ChuyenBay c : lcbSorted2) {
                out.println("<tr>\n"
                        + "<td>" + i++ + "</td>\n"
                        + "<td>" + c.getName() + "</td>\n"
                        + "<td>" + c.getTimeFrom() + "</td>\n"
                        + "<td>" + c.getTimeTo() + "</td>\n"
                        + "<td>" + c.getDateFrom() + "</td>\n"
                        + "<td>" + c.getPrice() + "00đ</td>\n"
                        + "<td><button class=\"btn-danger\" style=\"border-radius: 6px;\" name=\"bookingInfo\" value=\"" + c + "," + cus + "\"> Chọn Vé</button></td>"
                        + "</tr>");
            }
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
