<%@include file="back.jsp" %>
<% 
response.setIntHeader("Refresh", 40);
session.setMaxInactiveInterval(20);
if(session != null && !session.isNew()) {
  	 
}else{
	
	response.sendRedirect("mlog.jsp"); 
}
%>


<style>
.dropdown-menu
{
width: 1000px;
height:200px;
}
</style>
<body>
<nav class="nav navbar-default" id="mymenu">
<div class="navbar-header">
<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
</div>
<div class="navbar-collapse collapse">
<ul class="nav navbar-nav">
<li><a href="manager.jsp" id="mymenu2">HOME</a></li>
<li><a href="mprofile.jsp" id="mymenu2">PROFILE</a></li>
<li><a href="sendrequest.jsp" id="mymenu2">FUND TRANSFER</a></li>
<li><a href="viewrequest.jsp" id="mymenu2">RECEIVED REQUEST</a></li>
<li><a href="index.jsp" id="mymenu2">LOGOUT</a></li>
</ul>
</div>
</nav>
</body>