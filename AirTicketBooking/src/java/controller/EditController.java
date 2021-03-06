/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;

/**
 *
 * @author admin
 */
public class EditController extends HttpServlet {

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
//            HttpSession session = request.getSession();
//            Account acc = (Account) session.getAttribute("userS");
//            response.sendRedirect("home");
//            out.print(acc==null);
//            if (acc == null) {
//                response.sendRedirect("home");
//            }
            if (service.equals("default")) {
                HttpSession session = request.getSession();
                Account acc = (Account) session.getAttribute("userS");
                if (acc == null) {
                    response.sendRedirect("home");
                } else if (acc.getStatus() == 1) {
                    request.getRequestDispatcher("admin.jsp").forward(request, response);
                } else {
                    response.sendRedirect("home");
                }
            }

            if (service.equals("ChuyenBay")) {
                response.sendRedirect("EditChuyenBay");
            }
            
            if (service.equals("ThongTinChuyenBay")) {
                response.sendRedirect("EditThongTinChuyenBay");
            }
            
            if (service.equals("ThongTinHanhKhach")) {
                response.sendRedirect("EditThongTinHanhKhach");
            }
            
            if (service.equals("ThongTinVe")) {
                response.sendRedirect("EditThongTinVe");
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
