<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*,dee.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
</head>

<body>

<%
    String name=request.getParameter("name");
    String uname=request.getParameter("uname");
    String pass=request.getParameter("pass");
	//String cpass=request.getParameter("conpass");
	String contacts=request.getParameter("contacts");
    
    
    String query="insert into register values(?,?,?,?)";
    
    PreparedStatement ps=DBInfo.con.prepareStatement(query);
    ps.setString(1,name);
	ps.setString(2,uname);
    ps.setString(3,pass);
	ps.setString(4,contacts);
    
	session.setAttribute("name", name);
	session.setAttribute("uname", uname);
	session.setAttribute("contacts", contacts);
   
	int flag=0;
	flag=ps.executeUpdate();
   
       
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
