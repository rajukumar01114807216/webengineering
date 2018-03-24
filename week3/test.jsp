<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
&lt;%@page import=&quot;java.sql.*&quot; %&gt;<br />
&lt;%<br />
String action=request.getParameter(&quot;submit&quot;);<br />
<br />
if(action.equals(&quot;login&quot;))<br />
{<br />
String name=request.getParameter(&quot;name&quot;);<br />
String password=request.getParameter(&quot;password&quot;);<br />
<br />
try<br />
{<br />
Class.forName(&quot;com.mysql.jdbc.Driver&quot;);<br />
String url=&quot;jdbc:mysql://localhost:3306/raju?zeroDateTimeBehavior=convertToNull&quot;;<br />
Connection con = DriverManager.getConnection(url,&quot;root&quot;,&quot;&quot;);<br />
<br />
Statement st=con.createStatement();<br />
<br />
ResultSet rs =st.executeQuery(&quot;select * from registration where name='&quot;+name+&quot;' and Password='&quot;+password+&quot;'&quot;);<br />
<br />
if(rs.next())<br />
{<br />
response.sendRedirect(&quot;index.jsp&quot;);<br />
<br />
}<br />
<br />
else<br />
{<br />
out.println(&quot;&lt;script type=\&quot;text/javascript\&quot;&gt;&quot;);<br />
out.println(&quot;alert('Username and password invalid');&quot;);<br />
out.println(&quot;location='signin.jsp';&quot;);<br />
out.println(&quot;&lt;/script&gt;&quot;);<br />
<br />
}<br />
}<br />
catch(Exception e)<br />
{<br />
out.println(e);<br />
}<br />
}<br />
%&gt;
</body>
</html>