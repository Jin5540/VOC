<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../common/header.jsp" %>
            <section class="resume-section" id="mypage">
                <div class="resume-section-content">
                  <h2 class="mb-5">mypage</h2>
  <table width=70%>
	<tr>
    <td>USER</td>
<td>
${board1.auth}
</td>
</tr>  

    <tr>
	<td>COMPANY NAME</td>
    <td>${board.c_name}</td>
	</tr>
	<tr>
	<td>DRIVER NUMBER</td>
    <td>${board.d_num}</td>
	</tr>
    <tr>
	<td>ID</td>
    <td>${board.id}</td>
	</tr>
	<tr>
	<td>PASSWORD</td>
    <td>${board.pw}</td>
	</tr>
	<tr>
	<td>E-MAIL</td>
    <td>${board.email}</td>
	</tr>
	<tr>
	<td>PHONE</td>
    <td>${board.num}</td>
	</tr>

	
  </table>
  <br>
  <button class="w-40 btn btn-lg btn-primary" type="submit" data-oper='list' onclick="location.href='/Project/driver/list?d_num=${board.d_num}'" class="btn btn-default">check</button>
  </div>
  </section>
</body>
</html>