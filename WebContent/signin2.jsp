<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Login Form</title>
      <link rel="stylesheet" href="css/styleLogin.css">
      <script>
      function confirm()
      {
        var x = document.forms["myForm"]["conpass"].value;
        var y= document.forms["myForm"]["pass"].value;
        if (x.length < 6 || y.length < 6) {
          alert("password must be greater than 6 characters");
        return false;
      } 
      else
      {
        if(x!=y)
          alert("password not matched");
        return false;
      } 
      else
      {
        return true;
      }
}
</script>
</head>

<body>
  <div class="register-page">
  <div class="form">

    <form class="register-form" action="registerdb.jsp" method="post" name="myForm" onsubmit="return confirm()">
      <input type="text" placeholder="name" name="name"  />
      <input type="text" placeholder="uname" name="uname" />
      <input type="password" placeholder="password" name="pass"  />
      <input type="password" placeholder="confirm password" name="conpass"  />
      <input type="text" placeholder="contacts" name="contacts"  />
      <button>create</button>
      <p class="message">Already registered? <a href="#">Sign In</a></p>
    </form>

 <form class="login-form" action="signindb.jsp" method="post">
      <input type="text" placeholder="username" name="uname" required="true" />
      <input type="password" placeholder="password" name="pass" required="true" />
      <button>login</button>
      <p class="message">Not registered? <a href="#">Create an account</a></p>
    </form>
  </div>
</div>

  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/indexLogin.js"></script>

</body>
</html>
