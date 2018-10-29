<%@include file="mainBack.jsp" %>
<br><br><br>
<%@page import="java.sql.*,databaseconnection.*"%>
<div class="container">
<div class="row">
<div class="col-md-4 col-md-offset-4">
<div class="well">
<div class="text-center h3">MANAGER LOGIN</div>
<form action="mlog1.jsp">
<div class="form-group">
<label class="control-label">USER EMAIL</label>
<div class="input-group">
<span class="input-group-addon glyphicon glyphicon-user"></span>
<input type=email required name=email class="form-control" placeholder="Enter Email">
</div>
</div>

<div class="form-group">
<label class="control-label">PASSWORD</label>
<div class="input-group">
<span class="input-group-addon glyphicon glyphicon-lock"></span>
<input type=password required name=pass class="form-control"  placeholder="Enter Password">
</div>
</div>
<% 
Connection con=DBCon.getConnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from bank");

%>
<div class="form-group">
<label class="control-label">SELECT BANK</label>
<select name="bname" class="form-control">
<%while(rs.next()){%>
	<option value="<%=rs.getString("bname")%>"><%=rs.getString("bname")%></option>
<% } %>

</select>
</div>
<input type=submit value="LOGIN" class="btn btn-primary btn-block">
</form>
</div>
<div class="col-md-4">
</div>
</div>
</div>
</div>