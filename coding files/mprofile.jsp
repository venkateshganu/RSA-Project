<%@include file="managerBack.jsp" %><br><br><br>
<%@page import="java.sql.*,databaseconnection.*"%>

<%  
    String email=(String)session.getAttribute("email");
	 Connection con=DBCon.getConnection();
	 Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from manager where email='"+email+"'");
%>
		<%while(rs.next())
		{%>
			
			<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3">
<div class="well">
<div class="text-center h3">PROFILE</div>
<form action="mprofile1.jsp">
<div class="form-group">
<label class="control-label">MANAGER NAME</label>
<input type=text name=mname required  value="<%=rs.getString("mname")%>"  class="form-control" placeholder="Enter Manager Name">
</div>
<input type="hidden" name="managerId" value="<%=rs.getString("managerId")%>">
<div class="form-group">
<label class="control-label">EMAIL</label>
<input type=text name=email required value="<%=rs.getString("email")%>"  readonly="readonly" class="form-control"  placeholder="Enter Manager Email">
</div>

<div class="form-group">
<label class="control-label">PHONE</label>
<input type=text name=phone required class="form-control" value="<%=rs.getString("phone")%>"  placeholder="Enter Manager Phone Number">
</div>

<div class="form-group">
<label class="control-label">PASSWORD</label>
<input type=password name=pass required class="form-control" value="<%=rs.getString("pass")%>"   placeholder="Enter Password">
</div>

<div class="form-group">
<label class="control-label">BANK</label>
<input type=text name="bname" required value="<%=rs.getString("bname")%>" class="form-control" readonly="readonly">
</div>
<div class="form-group">
<label class="control-label">AMOUNT</label>
<input type=text name=amount required  readonly class="form-control" value="<%=rs.getString("amount")%>"   placeholder="Enter Amount">
</div>
<input type=submit value="UPDATE MANAGER" class="btn btn-primary btn-block">
</form>
</div>
<div class="col-md-3">
</div>
</div>
</div>
</div>
			
		<%}%>
		
	