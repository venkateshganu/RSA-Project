
<%@page import="action.Email"%>
<%@page import="java.sql.*,databaseconnection.*"%>

<%  
     int managerId=Integer.parseInt(request.getParameter("managerId"));
     String mname=request.getParameter("mname");
     String email=request.getParameter("email");
     String phone=request.getParameter("phone");
     String pass=request.getParameter("pass");
     String bname=request.getParameter("bname");
     
     int amount=Integer.parseInt(request.getParameter("amount"));
	 Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	String url=null;
	try{
	st.executeUpdate("update manager set mname='"+mname+"',email='"+email+"',phone='"+phone+"',pass='"+pass+"',bname='"+bname+"',amount='"+amount+"' where managerId='"+managerId+"' ");
 	
	url="mmessage.jsp?msg=Manager Updated Successfully&color=green";
	response.sendRedirect(url);
	
	}catch(Exception e){out.println("");
	url="mmessage.jsp?msg=Duplicate  Details&color=red";
	response.sendRedirect(url);
	}
	%>
