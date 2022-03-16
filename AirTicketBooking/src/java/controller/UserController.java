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
import model.ChuyenBayB;
import model.ChuyenBayDAO;
import model.HangBay;
import model.HangBayDAO;
import model.ThongTinChuyenBay;
import model.ThongTinChuyenBayDAO;
import model.ThongTinHanhKhach;
import model.ThongTinHanhKhachDAO;
import model.ThongTinVeDaDat;
import model.ThongTinVeDaDatDAO;

/**
 *
 * @author admin
 */
public class UserController extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession();
            Account acc = (Account) session.getAttribute("userS");
            if(acc == null){
                response.sendRedirect("home");
            } else{
                
                
                ThongTinHanhKhachDAO hkd = new ThongTinHanhKhachDAO();
                ThongTinVeDaDatDAO vd = new ThongTinVeDaDatDAO();
                ThongTinChuyenBayDAO ttcbd = new ThongTinChuyenBayDAO();
                ChuyenBayDAO cbd = new ChuyenBayDAO();
                HangBayDAO hbd = new HangBayDAO();
                ThongTinVeDaDat ve = new ThongTinVeDaDat();
                ThongTinChuyenBay ttcb = new ThongTinChuyenBay();
                ChuyenBayB cb = new ChuyenBayB();
                HangBay hb = new HangBay();
                
                ArrayList<ThongTinHanhKhach> lhk = hkd.getHkByUser(acc.getUsername());
                ArrayList<ThongTinVeDaDat> lv = new ArrayList<>();
                ArrayList<ThongTinChuyenBay> lttcb = new ArrayList<>();
                ArrayList<ChuyenBayB> lcb = new ArrayList<>();
                ArrayList<HangBay> lhb = new ArrayList<>();
                for (ThongTinHanhKhach hk : lhk) {
                    ve = vd.getTicketByMaHanhKhach(hk.getId());
                    lv.add(ve);
                }
                for (ThongTinVeDaDat v : lv) {
                    String[] PK = {""+v.getMachuyenbay(),""+v.getNgaykhoihanh()};
                    ttcb = ttcbd.getTTCBByPK(PK);
                    lttcb.add(ttcb);
                }
                for (ThongTinChuyenBay c : lttcb) {
                    cb = cbd.getCbByID(""+c.getIdCB());
                    lcb.add(cb);
                }
                for (ChuyenBayB c : lcb) {
                    hb = hbd.getHbByName(c.getName());
                    lhb.add(hb);
                }
                out.print(acc.getUsername());
                request.setAttribute("lhb", lhb);
                request.setAttribute("lhk", lhk);
                request.setAttribute("lttcb", lttcb);
                request.setAttribute("lv", lv);
                request.setAttribute("lcb", lcb);
                request.setAttribute("total", lv.size());
                out.print("--" + lhk.size() + "--" + lttcb.size()+ "--" + lv.size()+ "--" + lcb.size());
                
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
                        
                        
                        
                        int total_page = lv.size() / 5;
                        if (lv.size() % 5 != 0) {
                            total_page++;
                        }
                        int endP = startP+4;
                        if(startP+4>total_page){
                            endP = total_page;
                        }
                        request.setAttribute("endP", endP);
//                        request.setAttribute("ms", ms);
                        request.setAttribute("toltal_record", lv.size());
                        request.setAttribute("totalPage", total_page);
                        
                request.getRequestDispatcher("showBooked.jsp").forward(request, response);
                
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
