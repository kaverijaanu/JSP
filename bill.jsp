<html>
<head>
<title>Bill</title>
</head>
<body>
<%
    String date=request.getParameter("date");
    String bno=request.getParameter("billno");
    String custname=request.getParameter("customername");
    String add=request.getParameter("address");
    String pno=request.getParameter("phno");
    String cname=request.getParameter("cname");
    String mname=request.getParameter("modelname");
    String price=request.getParameter("price");
    String qty=request.getParameter("quantity");
    String tamt=request.getParameter("totalamount");    
    %>
    <br>
    <br>
<p align="right"><b>Date:   <%out.println(date);%></b></p>
<p align="left"><b>Bill Number:   <%out.println(bno);%></b></p>
  <p align="left"><b>Customer Name:   <%out.println(custname);%></b></p>
   <p align="left"><b>Address:   <%out.println(add);%></b></p>
  <p align="left"><b>Phone Number:   <%out.println(pno);%></b></p>
   <p align="left"><b>Company Name:   <%out.println(cname);%></b></p>
  <p align="left"><b>Model Name:   <%out.println(mname);%></b></p><br>
   <p align="center"><b>Price:   <%out.println(price);%></b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <b>quantity:   <%out.println(qty);%></b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <b>Total amount:   <%out.println(tamt);%></b></p>
 
				<center><input type="submit" class="button" value="Print"></center>

</body>
</html>