<%@page import="java.sql.*,java.util.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background:orchid">
        
        
    </body>
</html>


<%
    String action=request.getParameter("submit");
    
    if(action.equals("create account"))
{
    String name=request.getParameter("name");
    String phone=request.getParameter("phone");
    String email=request.getParameter("email");
    String dob=request.getParameter("dob");
    String password=request.getParameter("password");
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/raju?zeroDateTimeBehavior=convertToNull";
        Connection con = DriverManager.getConnection(url,"root","");
        
        Statement st=con.createStatement();
        
         int i=st.executeUpdate("insert into registration(name,phone,email,dob,password)values('"+name+"','"+phone+"','"+email+"','"+dob+"','"+password+"')");
        out.println("Data is successfully inserted!");
         
    }
    catch(Exception e)
            {
                out.println(e);
                e.printStackTrace();
            }
}
    %>