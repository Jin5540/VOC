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
                    <h2 class="mb-5">COMPENSATION</h2>
 <form role="form" action="/Project/voc/penalty" method="post">
  <table width=100%>
  
    <tr>
	<td>VOC_NUM</td>
	<td>${board.vo_num}</td>
	</tr>
	<tr>
	<td>DELIVERY NUMBER</td>
	<td>${board.pr_num}</td>
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
	<td>CLIENT COMPANY</td>
	<td>${board.c_name}</td>
	</tr>
	<tr>
	<td>CLAIM</td>
	<td>${board.c_content}</td>
	</tr>
	<tr>
	<td>COMPENSAITON</td>
	<td>${board.im_re}</td>
	</tr>
	<tr>
	<td>IMPUTATION</td>
	<td>${board.im_name}</td>
	</tr>
	<tr>
	<td>
	ATTRIBUATBLE REASONS</td>
	<td>${board.im_content}</td>
	</tr>
	<tr>
	<td>DATE</td>
	<td>${board.date1}</td>
	</tr>
    <tr>
	<td>penalty</td>
	<td><input type="text" name="p_content" required>원</td>
	</tr>
	<input type="hidden" name="vo_num" value="${board.vo_num}"/>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </table>
    <br>
    <input type="submit" value="register">
  <input type="reset" value="reset">
  </form>



  <sec:authorize access="isAuthenticated()">
  

  </sec:authorize>
  
</div>

</section>
			
	</body>
</html>