<%@include file="adminBack.jsp" %><br><br><br>
<%@page import="java.sql.*,databaseconnection.*"%>

<%  
	 Connection con=DBCon.getConnection();
	 Statement st=con.createStatement();
	 Statement st2=con.createStatement();
	ResultSet rs=st.executeQuery("select * from manager");
	ResultSet rs2=st2.executeQuery("select * from manager");
	if(rs.next())
	{%>
	<div class="container">
	 <div class="h3 text-center">MANAGER DETAILS</div>
	<table class="table table-responsive table-bordered">
	<tr><th>Manager Id</th><th>Manager Name</th><th>Email</th><th>Phone</th><th>Password</th><th>Bank Name</th><th>Balance</th></tr>
	<%while(rs2.next())
		{%>
			<tr><td><%=rs2.getInt("managerId")%></td><td><%=rs2.getString("mname")%></td><td><%=rs2.getString("email")%></td><td><%=rs2.getString("phone")%></td><td><%=rs2.getString("pass")%></td><td><%=rs2.getString("bname")%></td><td><%=rs2.getString("amount")%></td></tr>
			
		<%}%>
		</table></div>
	<%}else
	{
		
	}
	%>
