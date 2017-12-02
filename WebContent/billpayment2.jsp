<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="UTF-8">
  <title>Bill Payment</title>
      <link rel="stylesheet" href="css/styleLogin.css">
</head>

<body>
  <div class="login-page">
  <div class="form">
    
    <form class="login-form" action="hire_.jsp" method="post">
      <input type="number" name="srvid" placeholder="SRVID" required="true" />
      <input type="number" name="mobile" placeholder="mobile" required="true"/>
      <input type="text" name="ssoid" placeholder="SSOID" />
      <input type="number" name="amount" placeholder="amount" required="true"/>
      <input type="password" placeholder="password"/>
      <button>submit</button>
      
    </form>
    <br>
     <form class="register-form" action="signin2.jsp" method="post">
    <button1>Sign Out</button1>
    </form>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/indexLogin.js"></script>

</body>
</html>