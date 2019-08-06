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
<title>Distributor Report</title>
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
PreparedStatement st=conn.prepareStatement("select * from distributor where CompanyName=?");
st.setString(1, cn);

ResultSet rs=st.executeQuery();
%>
        <center><h1>Distributor Details</h1></center>

<form method="post">
<br>
<center>
<table border="2">
<tr>
<TH>Distributor ID    </TH>
<TH> Name        </TH>
<TH> Sex         </TH>
<TH> Company Name      </TH>
<TH> Model Name </TH>
<TH> Phone Number </TH>
<TH> Price </TH>
<TH> Amount Paid </TH>
<TH> Balance Amount </TH>
<TH> Quantity </TH>
<TH> Date </TH> 


</tr>
<% 

while(rs.next())
{

%>

<tr>
   <td><%=rs.getInt("Did") %></td>
   <td><%=rs.getString("Name") %></td>
    <td><%=rs.getString("Sex") %></td>
     <td><%=rs.getString("CompanyName") %></td>
   <td><%=rs.getString("ModelName") %></td>
    <td><%=rs.getString("PhNo") %></td>
     <td><%=rs.getInt("Price") %></td>
    <td><%=rs.getInt("Amtpaid") %></td>
    <td><%=rs.getInt("BalanceAmt") %></td>
     <td><%=rs.getInt("Quantity") %></td>
    <td><%=rs.getString("Date") %></td>
         
 </tr>
        <%

}

%>
    </table>
      <br>
    <br>
    <a href="distributorreport.jsp">Back</a>
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