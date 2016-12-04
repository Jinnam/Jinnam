<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<%@ include file="/module/link.jsp" %>
</head>
<body>
	<%@ include file="/module/top.jsp" %>

				<h1>게시판 리스트</h1>
				<div>전체행의 수 : ${totalRowCount} / ${list.size()}</div>
				<div>현재 페이지 : ${currentPage}</div>
					<table class="table table-hover">
						<thead>
							<tr>
								<th>boardTitle</th>
								<th>boardUser</th>
								<th>boardDate</th>
							</tr>
						</thead>
						<tbody>
				
							<c:forEach  var="b" items="${list}">
								<tr>	
									<td><a href='<c:url value="/board/BoardView?boardNo=${b.boardNo}"></c:url>'>${b.boardTitle}</a></td>
									<td>${b.boardUser}</td>
									<td>${b.boardDate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
					<!-- 페이징 -->
					<div>	
					
					<c:if test="${currentPage > showNumPage}">
						<a href='<c:url value="/board/BoardList?currentPage=${((currentPage-1)/(showNumPage)*showNumPage)-showNumPage+1}">
								</c:url>'>◀</a>					
					</c:if>
					<c:if test="${currentPage>1}">
						<a href='<c:url value="/board/BoardList?currentPage=${currentPage-1 }">
								</c:url>'>◀</a>					
					</c:if>
					
					<c:forEach var="i" begin="${((currentPage-1)/(showNumPage)*showNumPage)-showNumPage+1}" end="${(currentPage-1)/(showNumPage)*showNumPage+showNumPage }" step="1">${i}&nbsp;</c:forEach>
					
					<c:if test="${currentPage < lastPage}">
						<a href='<c:url value="/board/BoardList?currentPage=${currentPage+1 }"></c:url>'>▶</a>
					</c:if>
					<c:if test="${currentPage < lastPage-showNumPage+1}">
						<a href='<c:url value="/board/BoardList?currentPage=${((currentPage-1)/(showNumPage)*showNumPage)+showNumPage+1 }"></c:url>'>▶</a>
					</c:if>
					</div>
				    
					<%@ include file="/module/bottom.jsp" %>
</body>
</html>

