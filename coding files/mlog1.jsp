<%@include file="mainBack.jsp" %>
<%@page import="java.sql.*,databaseconnection.*"%>
<%
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String bname=request.getParameter("bname");
String url=null;
Connection con=DBCon.getConnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from manager where email='"+email+"' and pass='"+pass+"' and bname='"+bname+"'");
if(rs.next())
{
	url="manager.jsp";
	session.setAttribute("email", email);
	session.setAttribute("sbname", bname);
	response.sendRedirect(url);
}else
{
	url="message.jsp?msg=Invalid Login Details&color=red";
	response.sendRedirect(url);
}
%>