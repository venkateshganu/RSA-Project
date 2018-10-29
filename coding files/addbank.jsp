<%@include file="adminBack.jsp" %>
<br><br><br>
<div class="container">
<div class="row">
<div class="col-md-6 col-md-offset-3">
<div class="well">
<div class="text-center h3">ADD BANK</div>
<form action="addbank1.jsp">
<div class="form-group">
<label class="control-label">BANK NAME</label>
<input type=text required name=bname class="form-control" placeholder="BANK NAME">
</div>

<div class="form-group">
<label class="control-label">IFSC CODE</label>
<input type=text required name=ifsc class="form-control"  placeholder="Enter IFSC CODE">
</div>

<div class="form-group">
<label class="control-label">Bank Address</label>
<textarea class="form-control" required name="address"  placeholder="Enter Bank Address"></textarea>
</div>
<input type=submit value="ADD BANK" class="btn btn-primary btn-block">
</form>
</div>
<div class="col-md-3">
</div>
</div>
</div>
</div>