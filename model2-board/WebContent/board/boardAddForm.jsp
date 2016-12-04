<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BOARD ADD</title>
	<%@ include file="/module/link.jsp" %>
</head>
<body>
	<%@ include file="/module/top.jsp" %>
<h1>BOARD ADD</h1>
<form class="form-horizontal" action='<c:url value="/board/BoardAdd"></c:url>' method="post">
	<div class="form-group">
		<label class="control-label col-sm-2">boardTitle :</label>
		<div class="col-sm-10"><input class="form-control" name="boardTitle" id="boardTitle" type="text"/></div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2">boardContent :</label>
		<div class="col-sm-10"><textarea class="form-control" name="boardContent" id="boardContent" rows="5" cols="50"></textarea></div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2">boardName :</label>
		<div class="col-sm-10"><input class="form-control" name="boardUser" id="boardUser" type="text"/></div>
	</div>
	<div class="form-group">
		<label class="control-label col-sm-2">boardPw :</label>
		<div class="col-sm-10"><input class="form-control" name="boardPw" id="boardPw" type="password"/></div>
	</div>
	<div class="form-group">
		<center><input type="submit" class="btn btn-default" value="글입력"/>
		<button type="reset" class="btn btn-default" >초기화</button></center>
	</div>
</form>
	<%@ include file="/module/bottom.jsp" %>
</body>
</html>
