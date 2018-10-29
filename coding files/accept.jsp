<%@include file="managerBack.jsp" %><br><br><br>
<% 
int requestId=Integer.parseInt(request.getParameter("requestId"));
%>
<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3">
<div class="well">
<div class="text-center h3">VERIFICATION</div>
<form action="accept1.jsp">
<input type=hidden name="requestId" value="<%=requestId%>">
<div class="form-group">
<label class="control-label">ENTER PUBLIC KEY</label>
<textarea name=publickey required class="form-control" placeholder="BANK PUBLIC KEY"></textarea>
</div>

<div class="form-group">
<label class="control-label">ENTER PRIVATE KEY</label>
<input type=text required name=privatekey class="form-control"  placeholder="Enter PRIVATE KEY">
</div>

<input type=submit value="ACCEPT" class="btn btn-primary btn-block">
</form>
</div>
<div class="col-md-3">
</div>
</div>
</div>
</div>