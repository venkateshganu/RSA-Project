<%@include file="managerBack.jsp" %><br><br><br>
<%@page import="java.sql.*,databaseconnection.*"%>
<script>

</script>
<%  
String email=(String)session.getAttribute("email");
	 Connection con=DBCon.getConnection();
	 Statement st=con.createStatement();
	 Statement st2=con.createStatement();
	 String privatekey=null;
	 ResultSet rs2=null;
	 String url=null;
	 long diff=0;
	 ResultSet rs=st.executeQuery("select * from request where email='"+email+"'");%>
	 <div class="container">
	 <div class="h3 text-center">REQUESTS</div>
	 <table class="table table-bordered "><tr><th>REQUEST ID</th><th>REQUESTED BANK</th><th>REQUESTED MANGER</th><th>TIME</th><th>DESCRIPTION</th><th>KEY</th><th>STATUS</th></tr>
	<% while(rs.next())
	 { privatekey=rs.getString("privatekey");
	   
	 %>
		<tr><td><%=rs.getInt("requestId")%></td><td><%=rs.getString("bname")%></td><td><%=rs.getString("mname")%></td><td><%=rs.getString("day")%></td><td><%=rs.getString("descr")%></td>
		
		
		<% 
		rs2=st2.executeQuery("SELECT TIMESTAMPDIFF(SECOND,'"+rs.getString("day")+"', now())");
		if(rs2.next())
		{
			diff=rs2.getLong(1);
		}
		if(rs.getString("status").equalsIgnoreCase("ACCEPTED"))
		   {%>
		    <td>ACCEPTED</td> 
			<td>ACCEPTED</td>
		  <% }else{
		if(diff>120)
		{%><td><%out.println("Key Expired"); %></td>
			<td><%out.println("Request Expired"); %></td>
		<% } else{
		    url="accept.jsp?requestId="+rs.getInt("requestId");
		   if(rs.getString("status").equalsIgnoreCase("ACCEPTED"))
		   {%>
		    <td>ACCEPTED</td> 
			<td>ACCEPTED</td>
		  <% }else{%>
			     <td><%=privatekey%></td> 
			<td><a href="<%=url%>" class="btn btn-primary btn-block">ACCEPT</a></td>
		  <% }
			   %>
		    
		<% } }%>
		</tr> 
		 
	 <%}%> </table></div><%
	%>
