<%@include file="managerBack.jsp" %><br><br><br>
<% String email=request.getParameter("email");%>
<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3">
<div class="well">
<div class="text-center h3">SEND MONEY</div>
<form action="sendmoney1.jsp">
<input type="hidden" name=email value="<%=email%>">
<div class="form-group">
<label class="control-label">AMOUNT</label>
<div class="input-group">
<span class="input-group-addon glyphicon glyphicon-user"></span>
<input type=number name=amount class="form-control" placeholder="Enter Amount	">
</div>
</div>
<input type=submit value="Send" class="btn btn-primary btn-block">
</form>
</div>
<div class="col-md-3">
</div>
</div>
</div>
</div>