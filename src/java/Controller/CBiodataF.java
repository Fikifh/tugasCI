/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Controller.*;

/**
 *
 * @author syah
 */
public class CBiodataF extends HttpServlet {

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
            out.println("<title>Servlet CBiodataF</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CBiodataF at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
             int masuk =1;
        
        try{
            String url =    "jdbc:postgresql://localhost:5432/sias";
            String user = "postgres";
            String password = "root";
            Class.forName("org.postgresql.Driver");
            Connection konek = DriverManager.getConnection(url, user, password);
            String namadepan = request.getParameter("nama_depan");
            String namatengah = request.getParameter("nama_tengah");
            String namabelakang = request.getParameter("nama_belakang");
            String jeniskelamin = request.getParameter("jk");
            String alamat = request.getParameter("alamat");
            String detail = request.getParameter("detail");
            String email = request.getParameter("email");
            String nohp = request.getParameter("no_hp");
            String tanggallahir = request.getParameter("tanggal_lahir");
            Login login = new Login();
            String ns = request.getParameter("userSes");
            String sql = "UPDATE siswa SET gender='"+jeniskelamin+"',nama_depan='"+namadepan+"',nama_tengah='"+namatengah+"',nama_belakang='"+namabelakang+"',tanggal_lahir='"+tanggallahir+"',detail_siswa='"+detail+"',no_hp='"+nohp+"',email='"+email+"',alamat='"+alamat+"' WHERE nis="+ns+"";
            Statement st = konek.createStatement();           
            insertData in = new insertData();
           in.insert(sql);
           if(true){
                response.sendRedirect("home-siswa.jsp");
           }else
                response.sendRedirect("salahPswd.jsp");
           
 
    }catch(ClassNotFoundException | SQLException e){
       out.print(e);
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
