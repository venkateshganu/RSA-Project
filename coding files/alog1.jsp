
<%
String uname=request.getParameter("uname");
String pass=request.getParameter("pass");
String url=null;
if(uname.equalsIgnoreCase("admin") && pass.equalsIgnoreCase("admin"))
{  
	url="admin.jsp";
	session.setAttribute("auname", uname);
	response.sendRedirect(url);
}else
{
	url="message.jsp?msg=Invalid Login Details&color=red";
	response.sendRedirect(url);
}

%>