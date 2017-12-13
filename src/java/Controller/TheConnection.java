/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import static org.hibernate.criterion.Expression.sql;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author syah
 */
public class TheConnection {
    
    public static Connection TheConnection() {
        Connection konek = null;
        try{
            String url =    "jdbc:postgresql://localhost:5432/sias";
            String user = "postgres";
            String password = "root";
            Class.forName("org.postgresql.Driver");
            konek = DriverManager.getConnection(url, user, password);
            Statement st = konek.createStatement();
            ResultSet rs;           
        }catch(Exception e){
            out.println("gagal terkoneksi");
        }
        return konek;
    }
    public static int execute(String SQL) {
        int status = 0;
        Connection koneksi = TheConnection();
        try {
            Statement st = koneksi.createStatement();
            status = st.executeUpdate(SQL);            
        } catch (SQLException ex) {
            Logger.getLogger(TheConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    }
    public static ResultSet executeQuery(String SQL){
        ResultSet rs = null;
        Connection koneksi = TheConnection();
        try {
        Statement st = koneksi.createStatement();
        rs = st.executeQuery(SQL);
        } catch (SQLException ex) {
        Logger.getLogger(TheConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}