
package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DbManager
{
    Connection con=null; 
    PreparedStatement ps=null;
    ResultSet rs=null;
  public  DbManager()  throws ClassNotFoundException, SQLException 
    {
        Class.forName("com.mysql.jdbc.Driver");
        con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bankdb","root","");
    }
    public boolean insertDeleteUpdate(String query) throws SQLException
    {
     ps=con.prepareStatement(query);
     int n=ps.executeUpdate();
     if(n>0)
     {
       return true;  
     }
     else
     {
         return false;
     }
    }
    public ResultSet Select(String query) throws SQLException
    {
        ps=con.prepareStatement(query);
      rs=ps.executeQuery();
      return rs;
    }
            
}
