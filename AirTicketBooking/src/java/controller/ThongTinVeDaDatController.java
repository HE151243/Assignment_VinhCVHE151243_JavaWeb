/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
import model.ThongTinVeDaDat;
import model.ThongTinVeDaDatDAO;

/**
 *
 * @author admin
 */
public class ThongTinVeDaDatController extends HttpServlet {

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
        ThongTinVeDaDatDAO vd = new ThongTinVeDaDatDAO();
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
                        ArrayList<ThongTinVeDaDat> lv = vd.selectTop5(idx);
                        request.setAttribute("lv", lv);
                        int count = vd.countTTCB();
                        int total_page = count / 5;
                        if (count % 5 != 0) {
                            total_page++;
                        }
                        int endP = startP + 4;
                        if (startP + 4 > total_page) {
                            endP = total_page;
                        }
                        request.setAttribute("endP", endP);
                        request.setAttribute("ms", ms);
                        request.setAttribute("toltal_record", count);
                        request.setAttribute("totalPage", total_page);
                        request.getRequestDispatcher("editTTV.jsp").forward(request, response);
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
                    ArrayList<Integer> lidHK = vd.getIdHK_TT();
                    ArrayList<Integer> lidCB = vd.getIdCB_TT();
                    ArrayList<java.sql.Date> ld = vd.getDateCB();
                    request.setAttribute("lidHK", lidHK);
                    request.setAttribute("lidCB", lidCB);
                    request.setAttribute("ld", ld);
                    request.setAttribute("ms", "");                    
                    request.getRequestDispatcher("addTTV.jsp").forward(request, response);
                } else {    
                    ArrayList<Integer> lidHK = vd.getIdHK_TT();
                    ArrayList<Integer> lidCB = vd.getIdCB_TT();
                    ArrayList<java.sql.Date> ld = vd.getDateCB();
                    request.setAttribute("lidHK", lidHK);
                    request.setAttribute("lidCB", lidCB);
                    request.setAttribute("ld", ld);
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");                    
                    String idCB = request.getParameter("idCB");
                    String idHK = request.getParameter("idHK");
                    String s_dateFrom = request.getParameter("dateFrom");
                    String NL = request.getParameter("NL");
                    String TE = request.getParameter("TE");
                    String EB = request.getParameter("EB");
                    out.print(s_dateFrom);
                    out.print("abc");
                    Date parsed = (Date) sdf.parse(s_dateFrom);
                    out.print(parsed);
                    java.sql.Date dateFrom = new java.sql.Date(parsed.getTime());
                    ThongTinVeDaDat ve = new ThongTinVeDaDat(Integer.parseInt(idCB), Integer.parseInt(idHK), 
                            dateFrom, Integer.parseInt(NL), Integer.parseInt(NL), Integer.parseInt(NL));
                    out.print(ve);
                    int n  = vd.addNew(ve);
                    String ms = "Dữ liệu không hợp lệ!";
                    if (n > 0) {
                        ms = "Thêm thành công!";
                    }
                    request.setAttribute("ms", ms);
                    request.getRequestDispatcher("addTTV.jsp").forward(request, response);
                }
            }
            
            if (service.equals("update")) {
                String submit = request.getParameter("submit");
                String id = request.getParameter("id");
                ThongTinVeDaDat ve1 = vd.getVeByID(id);
                if (submit == null) {
                    ArrayList<Integer> lidHK = vd.getIdHK_TT();
                    ArrayList<Integer> lidCB = vd.getIdCB_TT();
                    ArrayList<java.sql.Date> ld = vd.getDateCB();
                    request.setAttribute("lidHK", lidHK);
                    request.setAttribute("lidCB", lidCB);
                    request.setAttribute("ld", ld);
                    
                    request.setAttribute("ms", "");
                    if (ve1.getNgaykhoihanh() != null) {
                        request.setAttribute("ve", ve1);
                    }
//                    out.print(ve);
                    request.getRequestDispatcher("updateTTV.jsp").forward(request, response);
                } else {
                    ArrayList<Integer> lidHK = vd.getIdHK_TT();
                    ArrayList<Integer> lidCB = vd.getIdCB_TT();
                    ArrayList<java.sql.Date> ld = vd.getDateCB();
                    request.setAttribute("lidHK", lidHK);
                    request.setAttribute("lidCB", lidCB);
                    request.setAttribute("ld", ld);
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");                    
                    String idCB = request.getParameter("idCB");
                    String idHK = request.getParameter("idHK");
                    String s_dateFrom = request.getParameter("dateFrom");
                    String NL = request.getParameter("NL");
                    String TE = request.getParameter("TE");
                    String EB = request.getParameter("EB");
                    out.print(s_dateFrom);
                    
                    Date parsed = (Date) sdf.parse(s_dateFrom);
                    out.print(parsed);
                    out.print("----"+id);
                    java.sql.Date dateFrom = new java.sql.Date(parsed.getTime());
                    
                    ThongTinVeDaDat ve = new ThongTinVeDaDat(Integer.parseInt(id),Integer.parseInt(idCB), Integer.parseInt(idHK), 
                            dateFrom, Integer.parseInt(NL), Integer.parseInt(TE), Integer.parseInt(EB));
                    out.print("abc");
                    out.print(ve);
                    
                    int n  = vd.updateTTV(ve);
                    
                    String ms = "Dữ liệu không hợp lệ!";
                    if (n > 0) {
                        request.setAttribute("ve", ve);
                        ms = "Cập nhật thành công!";
                    } else {
                        request.setAttribute("ve", ve1);
                    }
                    out.print(ms);
                    request.setAttribute("ms", ms);
                    request.getRequestDispatcher("updateTTV.jsp").forward(request, response);
                }
            }
            
            if (service.equals("delete")) {
                String id = request.getParameter("id");
                String ms = "Không thể xóa dữ bản ghi liên quan đến bảng dữ liệu khác!";
                if(vd.deleteById(id)>0){
                    ms = "Xóa thành công!";
                }
                HttpSession session = request.getSession();
                session.setAttribute("mess", ms);
                response.sendRedirect("EditThongTinVe");
            }
            
            if(service.equals("delete[]")){
                String[] id = request.getParameterValues("options");
                int n_delete = 0;
                String ms = "";
                if(id.length!=0){
                    ms = "Không thể xóa dữ bản ghi liên quan đến bảng dữ liệu khác!";
                    for (int i = 0; i < id.length; i++) {
                        n_delete+=vd.deleteById(id[i]);                       
                    }
                    if(n_delete>0){
                        ms = "Xóa thành công " + n_delete + " bản ghi!";
                    }
                }
                HttpSession session = request.getSession();
                session.setAttribute("mess", ms);
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ThongTinVeDaDatController.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(ThongTinVeDaDatController.class.getName()).log(Level.SEVERE, null, ex);
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
