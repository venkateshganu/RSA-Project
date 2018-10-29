<%@include file="managerBack.jsp" %>
<br><br>
<%@page import="java.sql.*,databaseconnection.*"%>


<%
String semail=(String)session.getAttribute("email");
Connection con=DBCon.getConnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
String privatekey=null;
ResultSet rs2=null;
String url=null;
long diff=0;
%>


<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3">
<div class="well">
<div class="text-center h3">SEND REQUEST BANK</div>
<form action="sendrequest1.jsp">

<% 

ResultSet rs3=st2.executeQuery("select * from bank");

%>
<div class="form-group">
<label class="control-label">SELECT BANK</label>
<select name="bname" class="form-control">
<%while(rs3.next()){%>
	<option value="<%=rs3.getString("bname")%>"><%=rs3.getString("bname")%></option>
<% } %>

</select>
</div>
<input type=submit value="NEXT" class="btn btn-primary btn-block">
</form>
</div>
<div class="col-md-3">
</div>
</div>
</div>
</div>
<% 
ResultSet rs=st.executeQuery("select * from request where semail='"+semail+"'");%>
<div class="container">
 <table class="table table-bordered "><tr><th>REQUEST ID</th><th>REQUESTED BANK</th><th>REQUESTED MANGER</th><th>TIME</th><th>STATUS</th><th>SEND MONEY</th></tr>
	<% while(rs.next())
	 { privatekey=rs.getString("privatekey");
	   
	 %>
		<tr><td><%=rs.getInt("requestId")%></td><td><%=rs.getString("bname")%></td><td><%=rs.getString("mname")%></td><td><%=rs.getString("day")%></td>
		
		
		<% 
		rs2=st2.executeQuery("SELECT TIMESTAMPDIFF(SECOND,'"+rs.getString("day")+"', now())");
		if(rs2.next())
		{
			diff=rs2.getLong(1);
		}
		if(rs.getString("status").equalsIgnoreCase("accepted"))
		{  String url3="sendmoney.jsp?email="+rs.getString("email");
		%>
		   
			<td><%=rs.getString("status")%></td>
			<td><a href="<%=url3%>" class="btn btn-block btn-primary">SEND MONEY</a></td>
	<%	}else
			{
			
			if(diff>120)
			{%>
				<td><%out.println("Request Expired"); %></td>
				<td><%out.println("Key Expired"); %></td>
			<% } else{
			url="accept.jsp?requestId="+rs.getInt("requestId");
			%>
			    <td><%out.println("Waiting"); %></td>
			     <td><%out.println("Waiting"); %></td>
			<% } 
			
			}%>
		</tr> 
		 
	 <%}%> </table></div>
