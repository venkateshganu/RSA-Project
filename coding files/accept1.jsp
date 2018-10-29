<%@include file="managerBack.jsp" %><br><br><br>
<%@page import="java.sql.*,databaseconnection.*"%>
<%
int requestId=Integer.parseInt(request.getParameter("requestId"));
String publickey=request.getParameter("publickey");
String privatekey=request.getParameter("privatekey");

String url=null;
Connection con=DBCon.getConnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
ResultSet rs=st.executeQuery("select * from request where requestId='"+requestId+"' and privatekey='"+privatekey+"' and publickey='"+publickey+"'");
if(rs.next())
{
	st2.executeUpdate("update request set status='ACCEPTED' where requestId='"+requestId+"'");
	url="mmessage.jsp?msg=Request accepted Successfully&color=red";
	
	response.sendRedirect(url);
}else
{
	url="mmessage.jsp?msg=Invalid Key Details Details&color=red";
	response.sendRedirect(url);
}
%>