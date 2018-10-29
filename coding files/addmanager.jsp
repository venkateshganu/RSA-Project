<%@include file="adminBack.jsp" %>
<%@page import="java.sql.*,databaseconnection.*"%>
<br><br><br>
<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3">
<div class="well">
<div class="text-center h3">ADD MANAGER</div>
<form action="addmanager1.jsp">
<div class="form-group">
<label class="control-label">MANAGER NAME</label>
<input type=text required name=mname class="form-control" placeholder="Enter Manager Name">
</div>

<div class="form-group">
<label class="control-label">EMAIL</label>
<input type=text required name=email class="form-control"  placeholder="Enter Manager Email">
</div>

<div class="form-group">
<label class="control-label">PHONE</label>
<input type=text required name=phone class="form-control"  placeholder="Enter Manager Phone Number">
</div>

<div class="form-group">
<label class="control-label">PASSWORD</label>
<input type=password required name=pass class="form-control"  placeholder="Enter Password">
</div>
<% 
Connection con=DBCon.getConnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from bank");

%>
<div class="form-group">
<label class="control-label">SELECT BANK</label>
<select name="bname" required class="form-control">
<%while(rs.next()){%>
	<option value="<%=rs.getString("bname")%>"><%=rs.getString("bname")%></option>
<% } %>

</select>
</div>
<div class="form-group">
<label class="control-label">AMOUNT</label>
<input type=text name=amount required class="form-control"  placeholder="Enter Amount">
</div>
<input type=submit value="ADD MANAGER" class="btn btn-primary btn-block">
</form>
</div>
<div class="col-md-3">
</div>
</div>
</div>
</div>