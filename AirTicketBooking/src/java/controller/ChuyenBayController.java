/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Time;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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
import model.HangBay;
import model.HangBayDAO;
import model.MayBay;

/**
 *
 * @author admin
 */
public class ChuyenBayController extends HttpServlet {

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
            ChuyenBayDAO cbd = new ChuyenBayDAO();
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
                        ArrayList<ChuyenBayB> lcb = cbd.selectTop5(idx);
                        request.setAttribute("lcb", lcb);
                        int count = cbd.countCB();
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
                        request.getRequestDispatcher("editCB.jsp").forward(request, response);
                    } else {
                        response.sendRedirect("home");
                    }
                } else {
                    response.sendRedirect("home");
                }
            }

            if (service.equals("delete")) {
                String id = request.getParameter("id");
//                ArrayList<ChuyenBayB> lcb = cbd.getAll();
                String ms = "Không thể xóa dữ bản ghi liên quan đến bảng dữ liệu khác!";
                if(cbd.deleteById(id)>0){
                    ms = "Xóa thành công!";
                }
                HttpSession session = request.getSession();
                session.setAttribute("mess", ms);
                response.sendRedirect("EditChuyenBay");
            }
            
            if(service.equals("delete[]")){
                String[] id = request.getParameterValues("options");
                int n_delete = 0;
                String ms = "";
                if(id.length!=0){
                    ms = "Không thể xóa dữ bản ghi liên quan đến bảng dữ liệu khác!";
                    for (int i = 0; i < id.length; i++) {
                        n_delete+=cbd.deleteById(id[i]);                       
                    }
                    if(n_delete>0){
                        ms = "Xóa thành công " + n_delete + " bản ghi!";
                    }
                }
                HttpSession session = request.getSession();
                session.setAttribute("mess", ms);
                response.sendRedirect("EditChuyenBay");
            }

            if (service.equals("add")) {
                String submit = request.getParameter("submit");
                if (submit == null) {
                    HangBayDAO hbd = new HangBayDAO();
                    ArrayList<HangBay> lhb = hbd.getAll();
                    ArrayList<MayBay> lmb = hbd.getAllMayBay();
                    request.setAttribute("ms", "");
                    request.setAttribute("listHB", lhb);
                    request.setAttribute("listMB", lmb);
                    request.getRequestDispatcher("addCB.jsp").forward(request, response);
                } else {
                    HangBayDAO hbd = new HangBayDAO();
                    ArrayList<HangBay> lhb = hbd.getAll();
                    ArrayList<MayBay> lmb = hbd.getAllMayBay();
//                    request.setAttribute(submit, out);
                    request.setAttribute("listHB", lhb);
                    request.setAttribute("listMB", lmb);
                    String name = request.getParameter("name");
                    String idMB = request.getParameter("idMB");
                    String localFrom = request.getParameter("localFrom");
                    String localTo = request.getParameter("localTo");
                    String s_timeFrom = request.getParameter("timeFrom");
                    String s_timeTo = request.getParameter("timeTo");
                    String total_seat = request.getParameter("total_seat");
                    Time timeFrom = new java.sql.Time(new SimpleDateFormat("HH:mm").parse(s_timeFrom).getTime());
                    Time timeTo = new java.sql.Time(new SimpleDateFormat("HH:mm").parse(s_timeTo).getTime());
                    ChuyenBayB cb = new ChuyenBayB(name, localFrom, localTo, timeFrom, timeTo, Integer.parseInt(total_seat), idMB);
                    int n = cbd.addNew(cb);
                    String ms = "Dữ liệu không hợp lệ!";
                    if (n > 0) {
                        ms = "Thêm thành công!";
                    }
                    request.setAttribute("ms", ms);
                    request.getRequestDispatcher("addCB.jsp").forward(request, response);
                }
            }

            if (service.equals("update")) {
                String submit = request.getParameter("submit");
                String id = request.getParameter("id");
//                out.print(id);
                if (submit == null) {
                    HangBayDAO hbd = new HangBayDAO();
                    ArrayList<HangBay> lhb = hbd.getAll();
                    ArrayList<MayBay> lmb = hbd.getAllMayBay();
                    request.setAttribute("ms", "");
                    request.setAttribute("listHB", lhb);
                    request.setAttribute("listMB", lmb);
                    ChuyenBayB cb = cbd.getCbByID(id);
                    if (cb.getName() != null) {
                        request.setAttribute("cb", cb);
                    }
                    out.print(cb);
                    request.getRequestDispatcher("updateCb.jsp").forward(request, response);
                } else {
                    HangBayDAO hbd = new HangBayDAO();
                    ArrayList<HangBay> lhb = hbd.getAll();
                    ArrayList<MayBay> lmb = hbd.getAllMayBay();                  
                    request.setAttribute("listHB", lhb);
                    request.setAttribute("listMB", lmb);
                    String ms = "Dữ liệu không hợp lệ!";
                    String name = request.getParameter("name");
                    String idMB = request.getParameter("idMB");
                    String localFrom = request.getParameter("localFrom");
                    String localTo = request.getParameter("localTo");
                    String s_timeFrom = request.getParameter("timeFrom");
                    String s_timeTo = request.getParameter("timeTo");
                    String total_seat = request.getParameter("total_seat");
                    Time timeFrom = new java.sql.Time(new SimpleDateFormat("HH:mm").parse(s_timeFrom).getTime());
                    Time timeTo = new java.sql.Time(new SimpleDateFormat("HH:mm").parse(s_timeTo).getTime());
                    ChuyenBayB cb = new ChuyenBayB(Integer.parseInt(id), name, localFrom, localTo, timeFrom, timeTo, Integer.parseInt(total_seat), idMB);
                    request.setAttribute("cb", cb);
                    int a = cbd.updateCB(cb);
                    if(a>0){
                        ms = "Cập nhật thành công!";
                    }
                    request.setAttribute("ms", ms);
                    request.getRequestDispatcher("updateCb.jsp").forward(request, response);
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
            Logger.getLogger(ChuyenBayController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ChuyenBayController.class.getName()).log(Level.SEVERE, null, ex);
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
