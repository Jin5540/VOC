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
<style>
.thead th {
  padding: 10px;
  font-weight: bold;
  border-top: 1px solid #ccc;
  border-right: 1px solid #ccc;
  border-bottom: 2px solid #c00;
  background: #dcdcd1;
}
</style>
</head>
<body>
<%@ include file="../common/header.jsp" %>
<div class="container">
  <br>
  <h2 class="mb-5">VOC</h2>
  <table width=100%>
  <c:forEach var="list" items="${list}">
  <thead>
    <tr>
	<th>NUM</th>
	<th>COMPANY</th>
	<th>COMPENSATION</th>


	
  </tr>
<thead>
    
    <tr>
	<td>${list.re_num}</td>
	<td>${list.im_name}</td>
	<td>${list.re_price}</td>



	</tr>
  </c:forEach>
  </table>

</div>



</body>