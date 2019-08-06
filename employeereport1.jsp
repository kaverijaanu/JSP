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
<title>Employee Report</title>
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
            String cn = request.getParameter("salary"); 
Connection conn=DriverManager.getConnection(url,username,password);
Statement stmt=conn.createStatement();
PreparedStatement st=conn.prepareStatement("select * from employee where Salary>=?");
st.setString(1, cn);

ResultSet rs=st.executeQuery();
%>
        <center><h1>Employee Details</h1></center>

<form method="post">
<br>
<center>
<table border="2">
<tr>
<TH> First Name     </TH>
<TH> Last Name        </TH>
<TH> Sex      </TH>
<TH> Date of Birth </TH>
<TH> Address </TH>
<TH> Phone Number </TH>
<TH> Salary </TH>
<TH> Date of joining </TH>
<TH> Status </TH>

</tr>
<% 

while(rs.next())
{

%>

<tr>
   <td><%=rs.getString("Fname") %></td>
    <td><%=rs.getString("Lname") %></td>
     <td><%=rs.getString("Sex") %></td>
   <td><%=rs.getString("DOB") %></td>
    <td><%=rs.getString("Address") %></td>
     <td><%=rs.getString("Phno") %></td>
    <td><%=rs.getInt("Salary") %></td>
    <td><%=rs.getString("DOJ") %></td>
     <td><%=rs.getString("Status") %></td>
                
 </tr>
        <%

}

%>
    </table>
      <br>
    <br>
    <a href="employeereport.jsp">Back</a>
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