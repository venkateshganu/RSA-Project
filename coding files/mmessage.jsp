<%@include file="managerBack.jsp"%>
<% String msg=request.getParameter("msg");
String color=request.getParameter("color");
%><br> <br> <br> <br>
<div class="container">
<div  class="col-md-8 col-md-offset-2">
<div class="well well-sm">
<%if(color.equalsIgnoreCase("green")){
	%><div class="h3 text-center text-primary"><%=msg%></div><% 
} else if(color.equalsIgnoreCase("red")){
	%><div class="h3 text-center text-danger"><%=msg%></div><% 
} else{
	%><div class="h3 text-center text-warning" ><%=msg%></div><% 
}%>

</div>
</div>
</div>
