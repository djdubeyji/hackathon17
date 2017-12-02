<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="dee.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Get Guide</title>


</script>
</head>

<body>

<%
String x="#2&[W<nJ*K\"xO_z";
String PRN=Integer.toString((int)(Math.random()*978563421)+1000000);
String amount=request.getParameter("amount");

System.out.println(PRN);

String checksum1=checksum.checksumf("HACKATHON2017|"+PRN+"|"+amount+"|"+x);
System.out.println("Checksum1 is "+checksum1);
%>
	<form action="Done.jsp" method="POST" >
		<input type="hidden" name="MERCHANTCODE" value="HACKATHON2017" />
		<input type="hidden" name="PRN" value=<%=PRN%> />
		<input type="hidden" name="REQTIMESTAMP" value="20160623132359958" />
		<input type="hidden" name="PURPOSE" value="Emitra" />
		<input type="hidden" name="AMOUNT" value=<%=amount%> />
		<input type="hidden" name="SUCCESSURL" value="http://localhost:8080/SIH/RajHack2017/Response.jsp" />
		<input type="hidden" name="FAILUREURL" value="http://localhost:8080/SIH/RajHack2017/failure.jsp" />
		<input type="hidden" name="CANCELURL" value="http://localhost:8080/SIH/RajHack2017/Response.jsp" />
		<input type="hidden" name="USERNAME" value="a" />
		<input type="hidden" name="USERMOBILE" value="7777777777" />
		<input type="hidden" name="USEREMAIL" value="<%=(String)session.getAttribute("uname")%>" />
		<input type="hidden" name="UDF1" value=<%=(String)session.getAttribute("name")%> />
		<input type="hidden" name="UDF2" value="" />
		<input type="hidden" name="UDF3" value="" />
		<input type="hidden" name="CHECKSUM" value=<%=checksum1%> />
		<%
		try{
		        
		PreparedStatement ps = DBInfo.con.prepareStatement("insert into transaction values(?,?,?,?,?)");
		ps.setString(1,PRN);
		ps.setString(2,(new Timestamp(System.currentTimeMillis())).toString());
		ps.setString(3,(String)session.getAttribute("uname"));
		System.out.println((String)session.getAttribute("uname"));
		ps.setString(4,request.getParameter("amount"));
		System.out.println(request.getParameter("amount"));
		ps.setString(5,"Pending");
		int flag=0;
		flag=ps.executeUpdate();
		
		if(flag==0)
		{
			response.sendRedirect("failure.jsp");
		}
		else
		{
			session.setAttribute("PRN", PRN);
			session.setAttribute("STATUS", "Pending");
			response.sendRedirect("Done.jsp");
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		%>
			
			
		if the page does not automatically redirects please click <a href="Done.jsp">here</a>
  </form>
</body>
</html>