<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>BOARD REMOVE FORM</title>
<%@ include file="/module/link.jsp" %>
</head>
<body>
    <%@ include file="/module/top.jsp" %>
	<form action='<c:url value="/board/BoardRemove"/>' method="post">
		<input name="boardNo" value="${param.boardNo}" type="hidden"/>
		<div>��й�ȣȮ�� :</div>
		<div><input name="boardPw" type="password"></div>
		<div>
			<input type="submit" value="����"/>
			<input type="reset" value="�ʱ�ȭ"/>
		</div>
	</form>
	<%@ include file="/module/bottom.jsp" %>
</body>
</html>
