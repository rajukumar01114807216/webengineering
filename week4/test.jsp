<%@page import="java.sql.*" %>
<%
    String action=request.getParameter("submit");
    
    if(action.equals("login"))
{
    String name=request.getParameter("name");
    String password=request.getParameter("password");
    
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        String url="jdbc:mysql://localhost:3306/raju?zeroDateTimeBehavior=convertToNull";
        Connection con = DriverManager.getConnection(url,"root","");
        
        Statement st=con.createStatement();
        
        ResultSet rs =st.executeQuery("select * from registration where name='"+name+"' and Password='"+password+"'");
        
        if(rs.next())
        {
            response.sendRedirect("index.jsp");
            
        }
        
        else
        {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Username and password invalid');");
            out.println("location='signin.jsp';");
            out.println("</script>");
         
        }
    }
    catch(Exception e)
            {
                out.println(e);
            }
}
    %>