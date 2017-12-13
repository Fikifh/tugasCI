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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author syah
 */
@WebServlet(name = "AdminEditSiswa", urlPatterns = {"/AdminEditSiswa"})
public class AdminEditSiswa extends HttpServlet {

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
          try{ 
            String klik = request.getParameter("nis");
            
            String url =    "jdbc:postgresql://localhost:5432/sias";
            String user = "postgres";
            String password = "root";
            Class.forName("org.postgresql.Driver");
            Connection konek = DriverManager.getConnection(url, user, password);
            
            String sql = "DELETE FROM siswa WHERE nis="+klik+"";
            Statement st = konek.createStatement();
            ResultSet rs = st.executeQuery(sql);
            if(rs.next()){                               
                out.println("<body onload='alert('Data Terhapus')'></body>");
                response.sendRedirect("Siakadslta/admin/kelola-siswa.jsp");
                
                
            }else{                
                response.sendRedirect("admin-edit-siswa.jsp");
            } 
    }catch(ClassNotFoundException | SQLException e){
       out.print(e);
    }
        
        }
        }
    }