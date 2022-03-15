/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.AccoutDao;
import model.ThongTinHanhKhach;
import model.ThongTinHanhKhachDAO;

/**
 *
 * @author admin
 */
public class ThongTinHanhKhachController extends HttpServlet {

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
            ThongTinHanhKhachDAO hkd = new ThongTinHanhKhachDAO();
            if (service.equals("default")) {
                HttpSession session = request.getSession();
                Account acc = (Account) session.getAttribute("userS");
                String ms = (String) session.getAttribute("mess");
                session.setAttribute("mess", "");
                if (acc != null) {
                    if (acc.getStatus() == 1) {
                        String s_idx = request.getParameter("page");
                        int idx = 1;
                        if (s_idx != null) {
                            idx = Integer.parseInt(s_idx);
                        }
                        int startP = 1;
                        if (idx > 5) {
                            startP = idx - 4;
                        }
                        request.setAttribute("startP", startP);
                        request.setAttribute("currPage", idx);
                        ArrayList<ThongTinHanhKhach> lhk = hkd.selectTop5(idx);
                        request.setAttribute("lhk", lhk);
                        int count = hkd.countTTHK();
                        int total_page = count / 5;
                        if (count % 5 != 0) {
                            total_page++;
                        }
                        int endP = startP+4;
                        if(startP+4>total_page){
                            endP = total_page;
                        }
                        request.setAttribute("endP", endP);
                        request.setAttribute("ms", ms);
                        request.setAttribute("toltal_record", count);
                        request.setAttribute("totalPage", total_page);
                        request.getRequestDispatcher("editTTHK.jsp").forward(request, response);
                    } else {
                        response.sendRedirect("home");
                    }
                } else {
                    response.sendRedirect("home");
                }
            }

            if (service.equals("add")) {
                String submit = request.getParameter("submit");
                if (submit == null) {
                    AccoutDao acd = new AccoutDao();
                    ArrayList<Account> la = acd.getAllCus();
                    request.setAttribute("la", la);
                    request.setAttribute("ms", "");
                    request.getRequestDispatcher("addTTHK.jsp").forward(request, response);
                } else {
                    AccoutDao acd = new AccoutDao();
                    ArrayList<Account> la = acd.getAllCus();
                    request.setAttribute("la", la);
                    String username = request.getParameter("username");
                    String name = request.getParameter("name");
                    String address = request.getParameter("address");
                    String phone = request.getParameter("phone");
                    String email = request.getParameter("email");
                    String pID = request.getParameter("pID");
                    String phone_rg = "(\\+[0/9]{1,2})?[0-9]{8,11}";
                    String email_rg = "[a-zA-Z]\\w+@\\w+(\\.\\w+){1,3}";
                    String pID_rg = "\\d{13}";
                    String ms = "Dữ liệu không hợp lệ!";
                    ThongTinHanhKhach hk = new ThongTinHanhKhach(username, name, address, phone, email, pID);
                    if (!phone.matches(phone_rg) || !email.matches(email_rg) || !pID.matches(pID_rg)) {
                        request.setAttribute("ms", ms);
                        request.getRequestDispatcher("addTTHK.jsp").forward(request, response);
                    } else {
                        int n = hkd.addNew(hk);
                        if (n > 0) {
                            ms = "Thêm thành công!";
                        }
                        request.setAttribute("ms", ms);
                        request.getRequestDispatcher("addTTHK.jsp").forward(request, response);
                    }
                }
            }

            if (service.equals("update")) {
                String submit = request.getParameter("submit");
                String id = request.getParameter("id");
//                out.print(id);
                if (submit == null) {
                    AccoutDao acd = new AccoutDao();
                    ArrayList<Account> la = acd.getAllCus();
                    request.setAttribute("la", la);
                    request.setAttribute("ms", "");
                    ThongTinHanhKhach hk = hkd.getHkByID(id);
                    if (hk.getName() != null) {
                        request.setAttribute("hk", hk);
                    }
                    out.print(hk);
                    request.getRequestDispatcher("updateTTHK.jsp").forward(request, response);
                } else {
                    AccoutDao acd = new AccoutDao();
                    ArrayList<Account> la = acd.getAllCus();
                    request.setAttribute("la", la);
                    out.print("avc");
                    String username = request.getParameter("username");
                    String name = request.getParameter("name");
                    String address = request.getParameter("address");
                    String phone = request.getParameter("phone");
                    String email = request.getParameter("email");
                    String pID = request.getParameter("pID");
                    String phone_rg = "(\\+[0/9]{1,2})?[0-9]{8,11}";
                    String email_rg = "[a-zA-Z]\\w+@\\w+(\\.\\w+){1,3}";
                    String pID_rg = "\\d{13}";
                    String ms = "Dữ liệu không hợp lệ!";
                    out.print("avc");
                    ThongTinHanhKhach hk = new ThongTinHanhKhach(Integer.parseInt(id), username, name, address, phone, email, pID);
                    out.print("avc");
                    if (!phone.matches(phone_rg) || !email.matches(email_rg) || !pID.matches(pID_rg)) {
                        request.setAttribute("ms", ms);
                        ThongTinHanhKhach hk1 = hkd.getHkByID(id);
                        request.setAttribute("hk", hk1);
                        out.print(hk1);
                        request.getRequestDispatcher("updateTTHK.jsp").forward(request, response);
                    } else {
                        request.setAttribute("hk", hk);
                        int a = hkd.updateTTHK(hk);
                        if (a > 0) {
                            ms = "Cập nhật thành công!";
                        }
                        out.print(hk);
                        request.setAttribute("ms", ms);
                        request.getRequestDispatcher("updateTTHK.jsp").forward(request, response);
                    }                   
                }
            }
            
            if (service.equals("delete")) {
                String id = request.getParameter("id");                
                String ms = "Không thể xóa dữ bản ghi liên quan đến bảng dữ liệu khác!";
                if(hkd.deleteById(id)>0){
                    ms = "Xóa thành công!";
                }
                HttpSession session = request.getSession();
                session.setAttribute("mess", ms);
                response.sendRedirect("EditThongTinHanhKhach");
            }
            
            if(service.equals("delete[]")){
                String[] id = request.getParameterValues("options");
                int n_delete = 0;
                String ms = "";
                if(id.length!=0){
                    ms = "Không thể xóa dữ bản ghi liên quan đến bảng dữ liệu khác!";
                    for (int i = 0; i < id.length; i++) {
                        n_delete+=hkd.deleteById(id[i]);                       
                    }
                    if(n_delete>0){
                        ms = "Xóa thành công " + n_delete + " bản ghi!";
                    }
                }
                HttpSession session = request.getSession();
                session.setAttribute("mess", ms);
                response.sendRedirect("EditThongTinHanhKhach");
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
