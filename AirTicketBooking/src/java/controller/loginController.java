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
import model.AccoutDao;

/**
 *
 * @author admin
 */
public class loginController extends HttpServlet {

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
                request.getRequestDispatcher("home").forward(request, response);
            }

            if (service.equals("login")) {
                request.getRequestDispatcher("login.jsp").forward(request, response);
            }

            if (service.equals("signUp")) {
                String submit = request.getParameter("submit");
                if (submit != null) {
                    String ms = "";
                    AccoutDao ad = new AccoutDao();
                    String user = request.getParameter("username");
                    String pass = request.getParameter("password");
                    Account acc = ad.getAccoutByUserName(user);
                    if (acc.getUsername() == null) {
                        int a = ad.addAcount(user, pass);
                        if (a > 0) {
                            ms = "Đăng ký thành công!";
                        } else {
                            ms = "Tên tài khoản đã tồn tại!";
                        }
//                    out.print(ms + "---" + a);
                    }

                    request.setAttribute("ms", ms);
                    request.getRequestDispatcher("signUp.jsp").forward(request, response);
                } else {
                    request.getRequestDispatcher("signUp.jsp").forward(request, response);
                }

            }

            if (service.equals("signIn")) {
                AccoutDao ad = new AccoutDao();
                String user = request.getParameter("username");
                String pass = request.getParameter("password");
                Account acc = ad.getLoginAccount(user, pass);
                String ms = "";
                out.print(acc.getUsername());
                if (acc.getUsername() == null) {
                    ms = "Sai tên tài khoản hoặc mật khẩu!";
                    request.setAttribute("ms", ms);
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                } else {
                    HttpSession session = request.getSession();
                    if (acc.getStatus() == 1) {
                        session.setMaxInactiveInterval(Integer.MAX_VALUE);
                    }
                    session.setAttribute("userS", acc);
                    response.sendRedirect("home");
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
