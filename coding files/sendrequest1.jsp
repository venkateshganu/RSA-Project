<%@include file="managerBack.jsp" %><br><br><br>
<%@page import="java.sql.*,databaseconnection.*"%>

<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3">
<div class="well">
<div class="text-center h3">SELECT MANAGER</div>
<form action="sendrequest2.jsp">

<% 
String semail=(String)session.getAttribute("email");
String bname=request.getParameter("bname");
Connection con=DBCon.getConnection();

Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from manager where bname='"+bname+"'");

%>
<input type="hidden" name=bname value="<%=bname%>">

<div class="form-group">
<label class="control-label">SELECT MANAGER</label>
<select name="mname" class="form-control">
<%

while(rs.next()){
if(rs.getString("email").equalsIgnoreCase(semail))
{}else{
%>
	<option value="<%=rs.getString("mname")%>"><%=rs.getString("mname")%></option>
<% }} %>

</select>
</div>
<div class="form-group">
<label class="control-label">DESCRIPTION</label>
<textarea name="descr" class="form-control" placeholder="Enter Descriptoin "></textarea>
</div>
<input type=submit value="NEXT" class="btn btn-primary btn-block">
</form>
</div>
<div class="col-md-3">
</div>
</div>
</div>
</div>