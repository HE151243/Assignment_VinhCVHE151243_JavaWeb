/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.util.ArrayList;
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
public class ChuyenBayServlet extends HttpServlet {

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
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        String service = request.getParameter("go");
        if (service == null) {
            service = "default";

        }

        try (PrintWriter out = response.getWriter()) {
            if (service.equals("default")) {
                response.sendRedirect("index.html");
            }
            if (service.equals("booking")) {
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
                int totalSeat = NL + TE + EB;
                request.setAttribute("totalSeat", totalSeat);
//                out.print(to + from + dateFrom + "abc");
                ArrayList<ChuyenBay> lcb1 = ad.getAll();
                ArrayList<ChuyenBay> lcbReturn = new ArrayList<>();
                if (tripSTT != null) {
                    lcbReturn = ad.getAllReturn(from, to, dateReturn, totalSeat);
                }
//                out.print(lcbReturn.isEmpty());
                request.setAttribute("listCbReturn", lcb1);
                
                ArrayList<ChuyenBay> lcb = ad.getAllCb(from, to, dateFrom, totalSeat);
                request.setAttribute("listCb", lcb1);
                
                
                
                request.getRequestDispatcher("timKiem.jsp").forward(request, response);
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
