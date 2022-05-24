<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%@ include file="../common/header.jsp" %>
<div class="container">
<h2><c:out value="${error}"></c:out></h2>
<h2><c:out value="${logout}"></c:out></h2>
<form method="post" action="/Spring20/member/customLogout">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <button class="w-100 btn btn-lg btn-primary" type="submit">로그아웃</button>
</form>
<%
          response.sendRedirect("/");

%>
</div>

	</body>
</html>