/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date.*;

/**
 *
 * @author syah
 */
@WebServlet(name = "uploadArtikel", urlPatterns = {"/uploadArtikel"})
public class uploadArtikel extends HttpServlet {
    public void getTanggal(){
        new java.util.Date();
    }
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
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet uploadArtikel</title>");            
            out.println("</head>");
            out.println("<body>");
            String admin = request.getParameter("admin");
            String judul = request.getParameter("judul");
            String isi = request.getParameter("isi_berita");
            String useradmin = request.getParameter("useradmin");            
            String tanggal = new java.util.Date().toString();
            String sql = "INSERT INTO berita(judul_berita,isi_berita,tanggal_dibuat,id_admin) values('"+judul+"','"+isi+"','"+tanggal+"',"+useradmin+")";            
            
            try{           
                insertData ins = new insertData();
                ins.insert(sql);
                
                response.sendRedirect("/Siakadslta/admin/listAtikel.jsp");
                
            }catch(Exception e){
                out.println("ada kesalahan pada  "+e+isi+useradmin);
            }
            out.println("</body>");
            out.println("</html>");
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

