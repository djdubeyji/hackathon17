package dee;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;

public class DBInfo
{
   public static Connection con;
   
   static
   {
     try
     {
      Class.forName("com.mysql.jdbc.Driver");
	  con=DriverManager.getConnection("jdbc:mysql://localhost:3307/pocketemitra","root","root");
     }
	 catch(Exception e)
	 {
	   e.printStackTrace();
	 }
   }
}