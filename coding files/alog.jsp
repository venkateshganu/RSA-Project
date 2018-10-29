<%@include file="mainBack.jsp" %>
<br><br><br>
<div class="container">
<div class="row">
<div class="col-md-4 col-md-offset-4">
<div class="well">
<div class="text-center h3">ADMINISTRATOR LOGIN</div>
<form action="alog1.jsp">
<div class="form-group">
<label class="control-label">USERNAME</label>
<div class="input-group">
<span class="input-group-addon glyphicon glyphicon-user"></span>
<input type=text name=uname required class="form-control" placeholder="Enter Username">
</div>
</div>

<div class="form-group">
<label class="control-label">PASSWORD</label>
<div class="input-group">
<span class="input-group-addon glyphicon glyphicon-lock"></span>
<input type=password name=pass required class="form-control"  placeholder="Enter Password">
</div>
</div>
<input type=submit value="LOGIN" class="btn btn-primary btn-block">
</form>
</div>
<div class="col-md-4">
</div>
</div>
</div>
</div>