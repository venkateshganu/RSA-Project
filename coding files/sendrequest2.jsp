
<%@page import="java.util.Random"%>
<%@page import="java.security.Key"%>
<%@page import="java.security.KeyPair"%>
<%@page import="action.*"%>
<%@page import="java.sql.*,databaseconnection.*"%>

<%  
     String semail=(String)session.getAttribute("email");
     String sbank=(String)session.getAttribute("sbname");
    
     String mname=request.getParameter("mname");
     String descr=request.getParameter("descr");
     String bname=request.getParameter("bname");
     KeyPair keyPair = RSAKeyPair.keyPairRSA();
     Key publickey = keyPair.getPublic();
   
     Key privatekey = keyPair.getPrivate();
     Random rand = new Random();
     int  publickey2 = rand.nextInt(999999) + 1;
   
	 Connection con=DBCon.getConnection();
	 Statement st4=con.createStatement();
	 ResultSet rs4=st4.executeQuery("select * from request where mname='"+mname+"' and status='ACCEPTED' and semail='"+semail+"' and bname='"+bname+"'");
     if(rs4.next())
     {    String url4="mmessage.jsp?msg=Request Alreday Accepted You Can Transfer Now&color=green";
    	 response.sendRedirect(url4);
     }else{
    	 
	 Statement st2=con.createStatement();
	 ResultSet rs2=st2.executeQuery("select email from manager where mname='"+mname+"'");
	String email=null;
	 if(rs2.next())
	 {
		 email=rs2.getString("email");
	 }
	 String url=null;
	Statement st=con.createStatement();
	
	try{
	int a=st.executeUpdate("insert into request(semail,sbank,mname,email,bname,descr,publickey,privatekey,day,status) values('"+semail+"','"+sbank+"','"+mname+"','"+email+"','"+bname+"','"+descr+"','"+publickey2+"','"+privatekey.toString()+"',now(),'REQUESTED')");
 	String msg="Hello "+mname+" Your request Key are Public Key:"+publickey2+"";
	Email.sendMail(sbank+" Request Keys",msg,email.trim(),email.trim());
	url="mmessage.jsp?msg=Request sent to Manager Successfully&color=green";
	response.sendRedirect(url);
	
	}catch(Exception e){out.println("");
	url="amessage.jsp?msg=Fails to send Request&color=red";
	response.sendRedirect(url);
	//out.print(e);
	}}
	%>
