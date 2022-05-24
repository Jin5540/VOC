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
                    <h2 class="mb-5">DELIVERY CLAIM</h2>

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
	<td>CLAIM</td>
	<td>${board.c_content}</td>
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
    
    <c:set var = "dis_ca" value = "${board.dis_ca}"/>
    <c:if test = "${dis_ca == null}">
    	<tr>
	<td>DiSAGGRING</td>
	<td>${board.dis_ca}</td>
	</tr>
    </c:if>
    
    <c:set var = "dis_re" value = "${board.dis_re}"/>
    <c:if test = "${dis_re == null}">
    <tr>
	<td>DISAGREE REASON</td>
	<td>${board.dis_re}</td>
	</tr>
    </c:if>
    
	<tr>
	<td>DATE</td>
	<td>${board.date1}</td>
	</tr>
	

  </table>
  <br>
  <sec:authorize access="isAuthenticated()">
        <c:set var = "d_check" value = "${board.d_check}"/>
        <c:if test = "${d_check == null}">
  <button class="w-40 btn btn-lg btn-primary" type="submit" data-oper='list' onclick="location.href='/Project/driver/check?vo_num=${board.vo_num}'" class="btn btn-default">Recognition</button>
<button class="w-40 btn btn-lg btn-primary" type="submit" data-oper='list' onclick="location.href='/Project/driver/driverdisagree?vo_num=${board.vo_num}'" class="btn btn-default">Disagree</button>

</c:if>
  </sec:authorize>
  <button class="w-40 btn btn-lg btn-primary" type="submit" data-oper='list' onclick="location.href='/Project/driver/list?d_num=${board.d_num}'" class="btn btn-default">list</button>
</div>

</section>
			
	</body>
</html>