<html>
<head>
    
    
    <script type="text/javascript" src="newjavascript.js"></script>
	<script type="text/javascript" src="datetime.js"></script>

<style type="text/css">
  
body{

background: url(image/logo.jpg);
background-size: cover;
margin: 0;
}

input
{
  width: 70%;
  outline: none;
  padding: 10px 11px;
  border:1px #aaa solid;
  font-size: 12px;
  background: #fff;
  display: block;
  margin:20px auto; 
}
#login{
  background: #19b1ca;
  color: #fff;
  display: block;
  margin: 20px auto;
}

#login{
  background: #19b1ca;
  color: #fff;
  border:none;
}

  div{
    width: 30%;
    height: 600px;
    background: rgba(0,0,0,.2);
    box-shadow: 5px 4px 43px #000;
    position:absolute;
    top: -35px;
    left: 100px;


  }
form{
  margin:30px auto;
  text-align: center;

}
b{
  font-size: 25px;
  color: #fff;

}
a{
  color: #fff;
}
img{
  display: block;
  margin: -35px auto 0 auto;

}

</style>





</head>
<body>
<div style=" margin-top:70px; margin-left: 400px">
  
    <form name="myForm"  method="post" action="signup.jsp" onsubmit="return validate()">
  
  <img src="image/admin1.png" alt="logo" width="60px" height="70px">
 
  <b> LOGIN FORM</b>
    

       <input type="text" name="name" placeholder="Name" />
       <input type="text" name="phone" placeholder="phone number" />
       <input type="email" name="email" placeholder="Email or Username" />
        <input type="date" name="dob" placeholder="DOB" />
       <input type="password" name="password" placeholder="password" />
        <input type="password" name="password1" placeholder="Confirm password" />
       
      <input type="submit" name="submit" value="create account" id="login"  />
     
      <input type="reset" id="login"/>
      <a href="signin.jsp">I HAVE ALREADY REGISTER ??</a>

    

       
    
  </form>


</div>
    <span id="date_time" style="font-size: 25px; font-family: cursive"></span>
            <script type="text/javascript">window.onload = date_time('date_time');</script>

</body>
</html>











