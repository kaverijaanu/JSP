<%@page import="java.sql.DriverManager"%>
<%@ page import= "javax.servlet.RequestDispatcher"%>
<%@ page import="javax.servlet.ServletException " %>
<%@ page import=" javax.servlet.annotation.WebServlet" %>
<%@ page import=" javax.servlet.http.HttpServlet"%>
<%@page import=" javax.servlet.http.HttpServletRequest" %>
<%@ page import = "javax.servlet.http.HttpServletResponse"%>
<%@ page import=" javax.servlet.http.HttpSession" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Item Stock Report</title>
<style>
		* {
			box-sizing: border-box;
		}
		body {
			margin: 0;
		}
		</style>
</head>
<body bgcolor="white">
		<br>
		<br>
		<br>
	
	

<%
try
{
Class.forName("com.mysql.jdbc.Driver");
String url="jdbc:mysql://127.0.0.1:3306/project";
String username="root";
String password="jasmine1";
            String cn = request.getParameter("cmpyname"); 
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
PreparedStatement st=conn.prepareStatement("select * from item where companyname=?");
st.setString(1, cn);

ResultSet rs=st.executeQuery();
%>
        <center><h1>Item Details</h1></center>

<form method="post">
<br>
<center>
<table border="2">
<tr>
<th> Item No </th>
<th> Company Name </th>
<th> Model Name </th>
<th> Description      </th>
<th> Color         </th>
<th> Date          </th>
<th> Price </th>
<th> Quantity </th>
</tr>
<% 

while(rs.next())
{

%>

<tr>
   <td><%=rs.getInt("itemno") %></td>
   <td><%=rs.getString("companyname") %></td>
    <td><%=rs.getString("modelname") %></td>
     <td><%=rs.getString("description") %></td>
   <td><%=rs.getString("color") %></td>
    <td><%=rs.getString("date") %></td>
     <td><%=rs.getInt("price") %></td>
    <td><%=rs.getInt("quantity") %></td>
 </tr>
        <%

}

%>
    </table>
      <br>
    <br>
    <a href="itemstockreport.jsp">Back</a>
    <%
    rs.close();
    stmt.close();
    conn.close();
    }
catch(Exception e)
{
    e.printStackTrace();
    }




%>
</center>
</form>
</body>
</html>