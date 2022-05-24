<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<title>LOGIN</title>
</head>
<body>
<%@ include file="../common/header.jsp" %>
            <section class="resume-section" id="login">
                <div class="resume-section-content">
                    <h2 class="mb-5">LOGIN</h2>
<h2><c:out value="${error}"></c:out></h2>
<h2><c:out value="${logout}"></c:out></h2>
<form method="post" action="/Project/login">
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
<table>
<tr>
<td>ID</td>
<td><input type="text" name="username" id="username" placeholder="Id" required></td>
</tr>
 <tr>
<td>PASSWORD</td>
<td> <input type="password" name="password" placeholder="password" required></td>
</tr>
</table>

<br>

    <button class="w-40 btn btn-lg btn-primary" type="submit">LOGIN</button>
</form>
</div>
</section>
						
	</body>
</html>