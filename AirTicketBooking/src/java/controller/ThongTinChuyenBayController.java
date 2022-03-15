/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
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
import model.ChuyenBayB;
import model.ChuyenBayDAO;
import model.ThongTinChuyenBay;
import model.ThongTinChuyenBayDAO;
import org.jboss.weld.servlet.SessionHolder;

/**
 *
 * @author admin
 */
public class ThongTinChuyenBayController extends HttpServlet {

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
        ThongTinChuyenBayDAO ttcbd = new ThongTinChuyenBayDAO();
        if (service == null) {
            service = "default";
        }
        try (PrintWriter out = response.getWriter()) {
            if (service.equals("default")) {
                out.print("abc");
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
                        ArrayList<ThongTinChuyenBay> lttcb = ttcbd.selectTop5(idx);
                        request.setAttribute("lttcb", lttcb);
                        int count = ttcbd.countTTCB();
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
                        request.getRequestDispatcher("editTTCB.jsp").forward(request, response);
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
                    ChuyenBayDAO cbd = new ChuyenBayDAO();
                    ArrayList<ChuyenBayB> lcb = cbd.getAll();
                    request.setAttribute("ms", "");
                    request.setAttribute("lcb", lcb);
                    request.getRequestDispatcher("addTTCB.jsp").forward(request, response);
                } else {
                    ChuyenBayDAO cbd = new ChuyenBayDAO();
                    ArrayList<ChuyenBayB> lcb = cbd.getAll();
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    request.setAttribute("lcb", lcb);
                    String idCB = request.getParameter("idCB");
                    String s_dateFrom = request.getParameter("dateFrom");
                    String price = request.getParameter("price");
                    String total_seat = request.getParameter("total_seat");
                    out.print(s_dateFrom);
                    Date parsed = sdf.parse(s_dateFrom);
                    java.sql.Date dateFrom = new java.sql.Date(parsed.getTime());
                    ThongTinChuyenBay ttcb = new ThongTinChuyenBay(Integer.parseInt(idCB), dateFrom, Float.parseFloat(price), Integer.parseInt(total_seat));
                    out.print(ttcb);
                    int n = ttcbd.addNew(ttcb);
                    String ms = "Dữ liệu không hợp lệ!";
                    if (n > 0) {
                        ms = "Thêm thành công!";
                    }
                    request.setAttribute("ms", ms);
                    request.getRequestDispatcher("addTTCB.jsp").forward(request, response);
                }
            }

            if (service.equals("update")) {
                String submit = request.getParameter("submit");
                if (submit == null) {
                    String[] PK = request.getParameter("PK").split(",");
                    HttpSession session = request.getSession();
                    session.setAttribute("PK", PK);
                    ChuyenBayDAO cbd = new ChuyenBayDAO();
                    ArrayList<ChuyenBayB> lcb = cbd.getAll();
                    request.setAttribute("lcb", lcb);
                    request.setAttribute("ms", "");
                    ThongTinChuyenBay ttcb = ttcbd.getTTCBByPK(PK);
                    if (ttcb.getDateFrom() != null) {
                        request.setAttribute("ttcb", ttcb);
                    }
                    out.print(ttcb);
                    request.getRequestDispatcher("updateTTCB.jsp").forward(request, response);
                } else {

                    HttpSession session = request.getSession();
                    String[] PK = (String[]) session.getAttribute("PK");
                    out.print(PK[0] + PK[1]);
                    ChuyenBayDAO cbd = new ChuyenBayDAO();
                    ArrayList<ChuyenBayB> lcb = cbd.getAll();
                    request.setAttribute("lcb", lcb);
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                    String ms = "Dữ liệu không hợp lệ!";
                    String idCB = request.getParameter("idCB");
                    String s_dateFrom = request.getParameter("dateFrom");
                    String price = request.getParameter("price");
                    String total_seat = request.getParameter("total_seat");
                    Date parsed = sdf.parse(s_dateFrom);
                    java.sql.Date dateFrom = new java.sql.Date(parsed.getTime());
                    ThongTinChuyenBay ttcb = new ThongTinChuyenBay(Integer.parseInt(idCB), dateFrom, Float.parseFloat(price), Integer.parseInt(total_seat));
                    request.setAttribute("ttcb", ttcb);
                    int a = ttcbd.updateTTCB(ttcb, PK);
                    if (a > 0) {
                        ms = "Cập nhật thành công!";
                    }
                    out.print(ttcb);
                    request.setAttribute("ms", ms);
                    request.getRequestDispatcher("updateTTCB.jsp").forward(request, response);
                }
            }
            
            if (service.equals("delete")) {
                String PK = request.getParameter("PK");    
                
                String ms = "Không thể xóa dữ bản ghi liên quan đến bảng dữ liệu khác!";
                if(ttcbd.deleteByPK(PK)>0){
                    ms = "Xóa thành công!";
                }
                HttpSession session = request.getSession();
                session.setAttribute("mess", ms);
                response.sendRedirect("EditThongTinChuyenBay");
            }
            
            if(service.equals("delete[]")){
                String[] PK = request.getParameterValues("options");
                int n_delete = 0;
                String ms = "";
                if(PK.length!=0){
                    ms = "Không thể xóa dữ bản ghi liên quan đến bảng dữ liệu khác!";
                    for (int i = 0; i < PK.length; i++) {
                        n_delete+=ttcbd.deleteByPK(PK[i]);                       
                    }
                    if(n_delete>0){
                        ms = "Xóa thành công " + n_delete + " bản ghi!";
                    }
                }
                HttpSession session = request.getSession();
                session.setAttribute("mess", ms);
                response.sendRedirect("EditThongTinChuyenBay");
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
            Logger.getLogger(ThongTinChuyenBayController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ThongTinChuyenBayController.class.getName()).log(Level.SEVERE, null, ex);
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
