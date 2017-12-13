/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import Controller.*;
import java.sql.Statement;

/**
 *
 * @author syah
 */
public class insertData {
    int hasil;
    public int insert(String sql) throws SQLException, ClassNotFoundException{         
        String url =    "jdbc:postgresql://localhost:5432/sias";
            String user = "postgres";
            String password = "root";
            Class.forName("org.postgresql.Driver");
            Connection konek = DriverManager.getConnection(url, user, password); 
            Statement st = konek.createStatement();
            st.execute(sql);            
        return hasil;
    }
    
}
