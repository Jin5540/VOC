<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta http-equiv="X-UA-Compatible" content="ie=edge"> 
<title>list</title>

</head>
<body>
<%@ include file="../common/header.jsp" %>
<div class="container">
  <br>
  <h2 class="mb-5">CUSOMER VOICE</h2>
  <p>We'll listen to your voice.</p>
  <table width=100%>
    <tr>
	<td>num</td>
	<td>title</td>
	<td>date</td>	
  </tr>
  
    <c:forEach var="list" items="${list}">
    <tr>
  	<td>${list.aid}</td>
	<td><a href="/Project/feedback/get?aid=${list.aid}">${list.im_title}</a></td>
	<td>${list.date1}</td>
	</tr>
  </c:forEach>

  </table>

 <a href="/Project/feedback/write_form">register</a>


</div>



</body>