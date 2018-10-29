
<%@page import="action.Email"%>
<%@page import="java.sql.*,databaseconnection.*"%>

<%  
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
	int a=st.executeUpdate("insert into manager(mname,email,phone,pass,bname,amount) values('"+mname+"','"+email+"','"+phone+"','"+pass+"','"+bname+"','"+amount+"')");
 	String msg="Hello "+mname+" You are Assigned as Manager for "+mname+"  Your Login Credentials are Username:"+email+" Password:"+pass;
	Email.sendMail("Manager Credentials",msg,email.trim(),email.trim());
	url="amessage.jsp?msg=Manager Added Successfully&color=green";
	response.sendRedirect(url);
	
	}catch(Exception e){out.println("");
	url="amessage.jsp?msg=Duplicate Manager Details&color=red";
	response.sendRedirect(url);
	}
	%>
