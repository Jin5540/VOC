<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/Product/resources/js/reply.js"></script>
</head> 
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
	<td>TITLE</td>
	<td>${board.im_title}</td>
	</tr>
    <tr>
    <td>WRITER</td>
	<td>${board.id}</td>
	</tr>
    <tr>
	<td>CONTENT</td>
	<td>${board.im_content}</td>
	</tr>
	<tr>
	<td>COMPENSAITON</td>
	<td>${board.im_re}</td>
	</tr>
	<tr>
	<td>DATE</td>
	<td>${board.date1}</td>
	</tr>
	

  </table>
  <br>
  <hr>
<div>

    <form method="post" action="/Project/replies/add">
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <p>
        <textarea rows="5" cols="50" name="reply"></textarea>
        </p>
        <p>
        <input type="hidden" name="aid" value="${board.aid}">
         <input type="submit" value="register">
        </p>
    </form>
    
</div>



 <c:forEach items="${reply}" var="reply">
 <table width=100%>

        <tr><td>${reply.replyer}  | ${reply.replyDate} </td></tr>
        <tr><td>${reply.reply }</td></tr>

</table>
</c:forEach>

<br>
  <sec:authorize access="hasRole('ROLE_ADMIN')">
  <button class="w-40 btn btn-lg btn-primary" type="submit" data-oper='receipt' onclick="location.href='/Project/voc/receipt?aid=${board.aid}&pr_num=${board.pr_num}'" class="btn btn-default">receipt</button>

  </sec:authorize>
  <button class="w-40 btn btn-lg btn-primary" type="submit" data-oper='list' onclick="location.href='/Project/feedback/list'" class="btn btn-default">list</button>
</div>

</section>
			
	</body>
</html>