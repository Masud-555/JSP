package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Employee;
import util.DbUtil;

public class EmpDao {

    private static String sql;
    private static PreparedStatement ps;
    private static ResultSet rs;

    public static List<Employee> getAllEmployee() {
        List<Employee> emp = new ArrayList<>();

        sql = "select * from emp";

        try {
            ps = DbUtil.getCon().prepareStatement(sql);

            rs = ps.executeQuery();

            while (rs.next()) {
                
                Employee e = new Employee(
                        rs.getString("name"), 
                        rs.getString("designation"),
                        rs.getDouble("salary"));
     
                
               

            }
            
             rs.close();
            ps.close();
            DbUtil.getCon().close();

        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }

        return emp;

    }
    public  static int saveAllEmployee(Employee e){
    
    int status = 0;
    sql = "insert into employee(name,designation,salary) values(?,?,?)";
    
        try {
            ps = DbUtil.getCon().prepareStatement(sql);
            
            ps.setString(1, e.getName());
            ps.setString(2, e.getDesignation());
            ps.setDouble(3, e.getSalary());
            
            status = ps.executeUpdate();
            
            System.out.println(status);
            
            ps.close();

            DbUtil.getCon().close();
        } catch (SQLException ex) {
            Logger.getLogger(EmpDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return status;
    
    }

   
}
