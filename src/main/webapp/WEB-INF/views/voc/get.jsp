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
                    <h2 class="mb-5">VOC</h2>

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
	<td>${board.d_name}(${board.d_num})</td>
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
    <c:set var = "p_content" value = "${board.p_content}"/>
    <c:if test = "${p_content != '0'}">
    <td>PANALTY</td>
	<td>${board.p_content}</td>
      </c:if>
      </tr>
      <tr>
        <c:set var = "d_check" value = "${board.d_check}"/>
    <c:if test = "${d_check != null}">
    
    <td>DRIVER CHECK</td>
	<td>${board.d_check}</td>
      </c:if>
      </tr>
      
          <tr>
        <c:set var = "d_objection" value = "${board.d_objection}"/>
    <c:if test = "${d_objection != null}">
    
    <td>DRIVER OBJECTION</td>
	<td>${board.d_objection}</td>
      </c:if>
      </tr>
       <tr>
        <c:set var = "re_price" value = "${board.re_price}"/>
    <c:if test = "${re_price != '0'}">
    
    <td>COMPENSATION</td>
	<td>${board.re_price}</td>
      </c:if>
      </tr>
      
	<tr>
	<td>DATE</td>
	<td>${board.date1}</td>
	</tr>

  </table>
  <br>
      <c:set var = "d_check" value = "${board.d_check}"/>
        <c:if test = "${p_content != 0 &&d_check == null}">
<button class="w-40 btn btn-lg btn-primary" type="submit" data-oper='list' onclick="location.href='/Project/voc/get?vo_num=${board.vo_num}'" class="btn btn-default">app push</button>
</c:if>
<br>
  <sec:authorize access="isAuthenticated()">
    <c:set var = "p_content" value = "${board.p_content}"/>
   <c:set var = "d_check" value = "${board.d_check}"/>
      <c:set var = "im_name" value = "${board.im_name}"/>
    <c:if test = "${p_content == 0 && d_check==null && im_name == 'delivery'}">
  <button class="w-40 btn btn-lg btn-primary" type="submit" data-oper='list' onclick="location.href='/Project/voc/compensation?vo_num=${board.vo_num}'" class="btn btn-default">compensation</button>
</c:if>

      <c:set var = "p_content" value = "${board.p_content}"/>
      <c:set var = "d_check" value = "${board.d_check}"/>
      <c:set var = "re_price" value = "${board.re_price}"/>
    <c:if test = "${d_check!=null && p_content != 0 && re_price ==0}">
   <form role="form" action="/Project/voc/final" method="post">
   <input type="hidden" name="vo_num" value="${board.vo_num}"/>
	<input type="hidden" name="ca_name" value="${board.ca_name}"/>
	<input type="hidden" name="d_name" value="${board.d_name}"/>
	<input type="hidden" name="c_name" value="${board.c_name}"/>
	<input type="hidden" name="c_content" value="${board.c_content}"/>
	<input type="hidden" name="im_re" value="${board.im_re}"/>
	<input type="hidden" name="im_name" value="${board.im_name}"/>
	<input type="hidden" name="p_content" value="${board.p_content}"/>
	<input type="hidden" name="re_price" value="${board.re_price}"/>
	<input type="hidden" name="d_num" value="${board.d_num}"/>
	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
  <button class="w-40 btn btn-lg btn-primary" type="submit" class="btn btn-default">complete</button>
</form>
</c:if>
  </sec:authorize>

  <button class="w-40 btn btn-lg btn-primary" type="submit" data-oper='list' onclick="location.href='/Project/voc/list'" class="btn btn-default">list</button>
</div>



</section>
			
	</body>
</html>