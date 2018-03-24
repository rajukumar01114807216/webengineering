<html>
<head>
    <title>myshop</title>
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
  font-size: 15px;
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
    height: 300px;
    background: rgba(0,0,0,.2);
    box-shadow: 5px 4px 43px #000;
    position:absolute;
    top: 50px;
    left: 200px;


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
  margin: -75px auto 0 auto;

}

</style>





</head>
<body>
<div style=" margin-top:20px; margin-left: 300px">
  
  <form action="test.jsp" method="post" >
  

 <img src="image/admin.png" alt="logo" width="60px" height="70px">
  <b> LOGIN FORM</b>
    

       <input type="text" name="name" placeholder="Name" required/>
      
       <input type="password" name="password" placeholder="password" required/>
       
       
      <input type="submit" name="submit" value="login" id="login" />
      <a href="signup.jsp">I dont have account ??</a> 
      
    

    

       
    
  </form>
    


</div>


</body>
</html>











