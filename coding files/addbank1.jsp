
<%@page import="java.sql.*,databaseconnection.*"%>

<%  
     String bname=request.getParameter("bname");
     String ifsc=request.getParameter("ifsc");
     String address=request.getParameter("address");
	 Connection con=DBCon.getConnection();
	Statement st=con.createStatement();
	String url=null;
	try{
	int a=st.executeUpdate("insert into bank(bname,ifsc,address) values('"+bname+"','"+ifsc+"','"+address+"')");
	url="amessage.jsp?msg=Bank Added Successfully&color=green";
	response.sendRedirect(url);
	
	}catch(Exception e){out.println("");
	url="amessage.jsp?msg=Duplicate Bank Details&color=red";
	response.sendRedirect(url);
	}
	%>
