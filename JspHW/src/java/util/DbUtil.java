
package util;

import java.lang.System.Logger;
import java.lang.System.Logger.Level;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DbUtil {
    
     private static Connection c = null;
    private static String url = "jdbc:mysql://localhost:3306/jsp";
    private static String user = "root";
    private static String password = "1234";
    private static String driver = "com.mysql.cj.jdbc.Driver";

    
    public static Connection getCon() {
        
         try {
             Class.forName(driver);
             c = DriverManager.getConnection(url, user, password);
         } catch (ClassNotFoundException |SQLException ex) {
             java.util.logging.Logger.getLogger(DbUtil.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
         }
        
        return c;
    }

}   
         
            
                
