<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> 
<!DOCTYPE html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<body>
<%@ include file="../common/header.jsp" %>
<div class="container">
            <section class="resume-section" id="GET">
                <div class="resume-section-content">
                    <h2 class="mb-5">customer voice</h2>

  <table width=100%>
  			  	<tr>
    <td>DELIVERY NUMBER</td>
	<td>${board.pr_num}</td>
	</tr>
  	<tr>
    <td>COMPANY NAME</td>
	<td>${board.c_name}</td>
	</tr>
	  	<tr>
    <td>DELIVERY COMPANY</td>
	<td>${board.ca_name}</td>
	</tr>
		  	<tr>
    <td>DRIVER NAME</td>
	<td>${board.d_name}</td>
	</tr>
    <tr>
	<td>ATTRIBUATBLE REASONS</td>
	<td>${board.im_content}</td>
	</tr>
	<tr>
	<td>COMPENSAITON</td>
	<td>${board.im_re}</td>
	</tr>
	
	<tr>
    <td>PANALTY</td>
	<td>${board.p_content}</td>
    </tr>
	<tr>
	<td>DATE</td>
	<td>${board.date1}</td>
	</tr>
	

  </table>
  <br>
  <sec:authorize access="isAuthenticated()">
  <button class="w-40 btn btn-lg btn-primary" type="submit" data-oper='receipt' onclick="location.href='/Project/voc/receipt?aid=${board.aid}&pr_num=${board.pr_num}'" class="btn btn-default">receipt</button>

  </sec:authorize>
  <button class="w-40 btn btn-lg btn-primary" type="submit" data-oper='list' onclick="location.href='/Project/feedback/list'" class="btn btn-default">list</button>
</div>

</section>
			
	</body>
</html>