<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="http://code.jquery.com/jquery-latest.js"></script>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<style>
 .DRIVER { display: none; }
</style>
 <script type="text/javascript"> 
 $(document).ready(function() {
	  $('#auth').change(function() {
	    var result = $('#auth option:selected').val();
	    if (result == 'ROLE_CARRIER') {
	      $('.DRIVER').show();
	    } else {
	      $('.DRIVER').hide();
	    }
	  }); 
	}); 

</script>
</head>
<body>
<%@ include file="../common/header.jsp" %>
            <section class="resume-section" id="join">
                <div class="resume-section-content">
                  <h2 class="mb-5">JOIN</h2>
<form method="post" action="/Project/member/join">
                  
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
  <table width=50%;>
	<tr>
    <td>USER</td>
<td>
<select id="auth" name="auth">    
<option value='ROLE_CLIENT'>고객사</option>
<option value='ROLE_CARRIER'>운송사</option>
<option value='ROLE_ADMIN'>관리자</option>
</select>
</tr>  

    <tr>
	<td>COMPANY NAME</td>
    <td><input type="text" name="c_name" required></td>
	</tr>
	
	<tr class="DRIVER">
	<td>DRIVER NUMBER</td>
    <td><input type="text" name="d_num"></td> 
	</tr>

    <tr>
	<td>ID</td>
    <td><input type="text" name="id" required></td>
	</tr>
	<tr>
	<td>PASSWORD</td>
    <td><input type="password" name="pw" required></td>
	</tr>
	<tr>
	<td>E-MAIL</td>
    <td><input type="email" name="email" required></td>
	</tr>
	<tr>
	<td>PHONE</td>
    <td><input type="tel" name="num" required></td>
	</tr>

	
  </table>
  <br>
<input class="w-40 btn btn-lg btn-primary" type="submit" value="JOIN">
<input class="w-40 btn btn-lg btn-primary" type="reset" value="RESET">

  </form>
  </div>
</section>
	</body>
</html>