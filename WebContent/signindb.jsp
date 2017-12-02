<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,dee.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>

<%
    String uname=request.getParameter("uname");
    String pass=request.getParameter("pass");
    
    
    String query="select * from register where uname=? and pass=?";
    
    PreparedStatement ps=DBInfo.con.prepareStatement(query);
    ps.setString(1,uname);
    ps.setString(2,pass);
    
	session.setAttribute("uname", uname);
    int flag=0;
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
    	flag=1;
    	break;
    }
    
    if(flag!=0)
    {
    	response.sendRedirect("billpayment2.jsp");
    }
    else
    {
    	response.sendRedirect("failure.jsp");
    }
    		
    
%>

</body>
</html>
