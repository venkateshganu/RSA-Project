<%@include file="managerBack.jsp" %>
<%@page import="java.sql.*,databaseconnection.*"%>
<%
String email=request.getParameter("email");
String semail=(String)session.getAttribute("email");
int amount=Integer.parseInt(request.getParameter("amount"));
String url=null;
Connection con=DBCon.getConnection();
Statement st=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();
Statement st4=con.createStatement();
Statement st5=con.createStatement();
int amount2=0;
ResultSet rs2=null;
ResultSet rs5=st5.executeQuery("select * from manager where email='"+semail+"'");
if(rs5.next())
{
	amount2=rs5.getInt("amount");
}
ResultSet rs=st.executeQuery("select * from manager where email='"+semail+"'");
if(amount2>=amount)
{
if(rs.next())
{   
	st3.executeUpdate("update manager set amount='"+(rs.getInt("amount")-amount)+"' where email='"+semail+"'");
	
	rs2=st2.executeQuery("select * from manager where email='"+email+"'");
	if(rs2.next())
	{    
		st4.executeUpdate("update manager set amount='"+(rs2.getInt("amount")+amount)+"' where email='"+email+"'");
	}
}
	url="mmessage.jsp?msg=Funds Transfered Successfully&color=red";
	response.sendRedirect(url);
}else{
	url="mmessage.jsp?msg=Insufficient Funds&color=red";
	response.sendRedirect(url);
}

%>