/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.AirDAO;
import model.ChuyenBay;
import model.HangBay;
import model.HangBayDAO;
import model.MayBay;
import model.ThongTinHanhKhach;
import model.ThongTinHanhKhachDAO;
import model.ThongTinVeDaDat;
import model.ThongTinVeDaDatDAO;

/**
 *
 * @author admin
 */
public class TicketController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String service = request.getParameter("go");
        if (service == null) {
            service = "default";

        }

        try (PrintWriter out = response.getWriter()) {
            if (service.equals("default")) {
                request.getRequestDispatcher("home").forward(request, response);
            }
            if (service.equals("search")) {
                AirDAO ad = new AirDAO();
                String from = request.getParameter("from");
                request.setAttribute("from", from);
                String to = request.getParameter("to");
                request.setAttribute("to", to);
                String dateFrom = request.getParameter("timeFrom");
                request.setAttribute("dateFrom", dateFrom);
                String dateReturn = request.getParameter("timeReturn");
                request.setAttribute("dateReturn", dateReturn);
                String tripSTT = request.getParameter("trip");
                request.setAttribute("tripSTT", tripSTT);

                int NL = Integer.parseInt(request.getParameter("NguoiLon"));
                int TE = Integer.parseInt(request.getParameter("TreEm"));
                int EB = Integer.parseInt(request.getParameter("EmBe"));
                request.setAttribute("NL", NL);
                request.setAttribute("TE", TE);
                request.setAttribute("EB", EB);
                request.setAttribute("cus", NL + ", " + TE + ", " + EB);
                out.print(NL + ", " + TE + ", " + EB);
                int totalSeat = NL + TE + EB;
                request.setAttribute("totalSeat", totalSeat);
//                out.print(to + from + dateFrom + "abc");
                ArrayList<ChuyenBay> lcb1 = ad.getAll();
                ArrayList<ChuyenBay> lcbReturn = new ArrayList<>();
                if (tripSTT != null) {
                    lcbReturn = ad.getAllCb(to, from, dateReturn, totalSeat);
                }
//                out.print(lcbReturn.isEmpty());
                request.setAttribute("listCbReturn", lcbReturn);
                ArrayList<ChuyenBay> lcb = ad.getAllCb(from, to, dateFrom, totalSeat);
                request.setAttribute("listCb", lcb);
                request.getRequestDispatcher("timKiem.jsp").forward(request, response);
            }

            if (service.equals("booking")) {
                AirDAO ad = new AirDAO();
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                String lcb = request.getParameter("bookingInfo");
                String[] elm = lcb.split(",");
                String cbRe = request.getParameter("bookingInfoReturn");
//                out.print("--" );
                String[] cbReturn = null;
                if (cbRe != null) {
                    cbReturn = request.getParameter("bookingInfoReturn").split(",");
                }
                Date date;
                date = sdf.parse(elm[6]);
//                out.print(date+"12345");
//                String date1 = new SimpleDateFormat("dd-MM-YYYY").format(date);
                Time timeFrom = new java.sql.Time(new SimpleDateFormat("HH:mm").parse(elm[4]).getTime());
                Time timeTo = new java.sql.Time(new SimpleDateFormat("HH:mm").parse(elm[5]).getTime());
                MayBay mb = ad.getMBbyID(elm[8].trim());
                MayBay mbr = new MayBay();
                HangBayDAO hbd = new HangBayDAO();
                HangBay hbr = new HangBay();
                if (cbReturn != null) {
                    mbr = ad.getMBbyID(cbReturn[8].trim());
                    hbr = hbd.getHbByName(cbReturn[1].trim());
                }
                HangBay hb = hbd.getHbByName(elm[1].trim());
                out.print(elm[1]);
                out.print(hb);

                ChuyenBay cb = new ChuyenBay(Integer.parseInt(elm[0].trim()), elm[1], elm[2], elm[3], timeFrom, timeTo, date, Float.parseFloat(elm[7]), elm[8]);
                String[] cust = request.getParameter("cus").split(",");
//                out.print(cust==null    );
                HttpSession session = request.getSession();
                session.setAttribute("cbr", cbReturn);
                session.setAttribute("hbr", hbr);
                session.setAttribute("hb", hb);
                session.setAttribute("mb", mb);
                session.setAttribute("mbr", mbr);
                session.setAttribute("cb", cb);
                session.setAttribute("NL", cust[0].trim());
                session.setAttribute("TE", cust[1].trim());
                session.setAttribute("EB", cust[2].trim());
//                request.setAttribute("cbr", cbReturn);
//                request.setAttribute("hbr", hbr);
//                request.setAttribute("hb", hb);
//                request.setAttribute("mb", mb);
//                request.setAttribute("mbr", mbr);
//                request.setAttribute("cb", cb);
//                request.setAttribute("NL", cust[0].trim());
//                request.setAttribute("TE", cust[1].trim());
//                request.setAttribute("EB", cust[2].trim());
//                out.print(cb);

                request.getRequestDispatcher("datve.jsp").forward(request, response);
            }

            if (service.equals("thanhtoan")) {
                ThongTinHanhKhachDAO hkd = new ThongTinHanhKhachDAO();
                ThongTinVeDaDatDAO vd = new ThongTinVeDaDatDAO();
                HangBayDAO hbd = new HangBayDAO();
                HangBay hbr = new HangBay();
                String tenNDV = request.getParameter("tenNDV");
                String sdtNDV = request.getParameter("sdtNDV");
                String emailNDV = request.getParameter("emailNDV");
                String diachiNDV = request.getParameter("diachiNDV");
                String cccdNDV = request.getParameter("cccdNDV");
                HttpSession session = request.getSession();
                Account acc = (Account) session.getAttribute("userS");
                boolean check = false;
                String mess = "";
                String phone_rg = "(\\+[0/9]{1,2})?[0-9]{8,11}";
                String email_rg = "[a-zA-Z]\\w+@\\w+(\\.\\w+){1,3}";
                String pID_rg = "\\d{13}";
                if (!sdtNDV.matches(phone_rg) || !emailNDV.matches(email_rg) || !cccdNDV.matches(pID_rg)) {
                    request.setAttribute("mess", "Thông tin không hợp lệ");
                    request.getRequestDispatcher("datve.jsp").forward(request, response);
                } else {
                    if (acc != null) {
                        ThongTinHanhKhach tthk = new ThongTinHanhKhach(acc.getUsername(), tenNDV, diachiNDV, sdtNDV, emailNDV, cccdNDV);
                        int a = hkd.addNew(tthk);
                    } else {
                        ThongTinHanhKhach tthk = new ThongTinHanhKhach(null, tenNDV, diachiNDV, sdtNDV, emailNDV, cccdNDV);
                        int a = hkd.addNew(tthk);
                    }

                    String[] mbay = request.getParameter("mb").split(",");
                    String[] cbay = request.getParameter("cb").split(",");
                    String[] cbayr = request.getParameter("cbr").split(",");
                    out.print(cbayr.length == 0);
                    
                    request.setAttribute("cbr", cbayr);
//                    for (int i = 0; i < cbayr.length; i++) {
//
//                        out.print("--" + cbayr[i]);
//
//                    }
                    String totalPrice = request.getParameter("totalPrice");
                    String[] GTNL = request.getParameterValues("gt-NL");
                    String[] GTTE = request.getParameterValues("gt-TE");
                    String[] GTEB = request.getParameterValues("gt-EB");
                    request.setAttribute("GTNL", GTNL);
                    request.setAttribute("GTTE", GTTE);
                    request.setAttribute("GTEB", GTEB);

                    String[] tenNL = request.getParameterValues("nlName");
                    String[] tenTE = request.getParameterValues("teName");
                    String[] tenEB = request.getParameterValues("ebName");
                    request.setAttribute("tenNL", tenNL);
                    request.setAttribute("tenTE", tenTE);
                    request.setAttribute("tenEB", tenEB);
                    
                    if (cbayr.length != 0) {
                        hbr = hbd.getHbByName(cbayr[1].trim());
                        java.sql.Date dateReturn = new java.sql.Date(new SimpleDateFormat("yyyy-MM-dd").parse(cbayr[6].trim()).getTime());
                        int a = hkd.getLastedHK();
                        ThongTinVeDaDat veVe = new ThongTinVeDaDat(Integer.parseInt(cbayr[0].trim()), a, dateReturn, tenNL.length,tenTE.length,tenEB.length);
                        request.setAttribute("veVe", vd.getLastedTicket());
                        vd.addNew(veVe);
//                        out.print("b: " + b);
//                        out.print("------" + cbayr[0] + "------" + dateReturn);
                    }

                    String[] dayTE = request.getParameterValues("day-TE");
                    String[] monthTE = request.getParameterValues("month-TE");
                    String[] yearTE = request.getParameterValues("year-TE");
                    request.setAttribute("dayTE", dayTE);
                    request.setAttribute("monthTE", monthTE);
                    request.setAttribute("yearTE", yearTE);

                    String[] dayEB = request.getParameterValues("day-EB");
                    String[] monthEB = request.getParameterValues("month-EB");
                    String[] yearEB = request.getParameterValues("year-EB");
                    request.setAttribute("dayEB", dayEB);
                    request.setAttribute("monthEB", monthEB);
                    request.setAttribute("yearEB", yearEB);

                    HangBay hb = hbd.getHbByName(cbay[1].trim());
                    session.setAttribute("hbr", hbr);
                    session.setAttribute("hb", hb);

//                out.print(tenEB[0]);
//                out.print(tenNL[0] + tenTE[0] + tenEB[0]);
//                request.setAttribute("cb", cbay);
//                request.setAttribute("mb", mbay);
                    request.setAttribute("totalPrice", totalPrice);
                    AirDAO ad = new AirDAO();
                    SimpleDateFormat sdf = new SimpleDateFormat("EEE MMM dd HH:mm:ss z yyyy");
                    Date date = null;
//                out.print(cbay[6]);
                    date = sdf.parse(cbay[6].trim());
                    out.print(cbay[6]);
                    java.sql.Date dateFrom = new java.sql.Date(sdf.parse(cbay[6].trim()).getTime());
                    int a = hkd.getLastedHK();
                    ThongTinVeDaDat veDi = new ThongTinVeDaDat(Integer.parseInt(cbay[0].trim()), a, dateFrom, tenNL.length,tenTE.length,tenEB.length);
                    vd.addNew(veDi);
                    out.print(veDi + "----" + a);
                    request.setAttribute("veDi", vd.getLastedTicket());
//                out.print(date);
//                String date1 = new SimpleDateFormat("dd-MM-YYYY").format(date);
//                out.print("<----"+date1+"---->");
                    Time timeFrom = new java.sql.Time(new SimpleDateFormat("HH:mm").parse(cbay[4]).getTime());
                    Time timeTo = new java.sql.Time(new SimpleDateFormat("HH:mm").parse(cbay[5]).getTime());
                    MayBay mb = new MayBay(mbay[0], mbay[1]);
                    request.setAttribute("mb", mb);
                    ChuyenBay cb = new ChuyenBay(Integer.parseInt(cbay[0]), cbay[1], cbay[2], cbay[3], timeFrom, timeTo, date, Float.parseFloat(cbay[7]), cbay[8]);
//                out.print(mb + "----" + cb);
                    request.setAttribute("cb", cb);
                    request.getRequestDispatcher("thanhtoan.jsp").forward(request, response);
                }

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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(TicketController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(TicketController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
