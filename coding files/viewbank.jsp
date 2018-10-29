<%@include file="adminBack.jsp" %><br><br><br>
<%@page import="java.sql.*,databaseconnection.*"%>

<%  
	 Connection con=DBCon.getConnection();
	 Statement st=con.createStatement();
	 Statement st2=con.createStatement();
	ResultSet rs=st.executeQuery("select * from bank");
	ResultSet rs2=st2.executeQuery("select * from bank");
	if(rs.next())
	{%>
	<div class="container">
	 <div class="h3 text-center">BANK DETAILS</div>
	<table class="table table-responsive table-bordered">
	<tr><th>Bank Id</th><th>Bank Name</th><th>Bank IfSC Code</th><th>Bank Address</th></tr>
	<%while(rs2.next())
		{%>
			<tr><td><%=rs2.getInt("bankId")%></td><td><%=rs2.getString("bname")%></td><td><%=rs2.getString("ifsc")%></td><td><%=rs2.getString("address")%></td></tr>
			
		<%}%>
		</table></div>
	<%}else
	{
		
	}
	%>
