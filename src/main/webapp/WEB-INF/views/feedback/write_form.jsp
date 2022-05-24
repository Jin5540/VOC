<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta http-equiv="X-UA-Compatible" content="ie=edge"> 
<title>customer voice</title> 
</head>
<%@ include file="../common/header.jsp" %>
<div class="container">
            <section class="resume-section" id="write">
                <div class="resume-section-content">
                    <h2 class="mb-5">customer voice</h2>
 <form role="form" action="/Project/feedback/register" method="post">
  <table width=70%;>
 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

  	<tr>
	<td>COMPANY NAME</td>
    <td><input type="text" name="c_name" value="${read1.c_name}" readonly></td>
	</tr>
    <tr>
    <tr>
<tr>   

<tr>
    <td>DELIVERY COMPANY</td>
    <td><select id='ca_name' name="ca_name" required>
    <option value="">---------</option>
			<option value="kana">kana</option>
			<option value="haneul">haneul</option>
    </select>
    </td>
</tr>
  	<tr>
	<td>DRIVER NAME</td>
    <td><input type="text" name="d_name" required></td>
	</tr>
    <tr>
    <tr>
<tr> 

</tr>
  	<tr>
	<td>DELIVERY NUMBER</td>
    <td><input type="text" name="pr_num" required></td>
	</tr>
    <tr>
    <tr>
<tr> 


    
	<td>TITLE</td>
    <td><input type="text" name="im_title" required></td>
	</tr>

	<td>CONTENT</td>
    <td><textarea cols="50" rows="5" name="im_content" required></textarea></td>
	</tr>
    <tr>
	<td>COMPENSATION</td>
    <td><input type="radio" name="im_re" value='y'>Y</td>
    <td><input type="radio" name="im_re" value='n' checked>N</td>
	</tr>
	
  </table>
  <br>
<input type="submit" value="register">
<input type="reset" value="reset">
</form>
</div>
</section>
	</body>
</html>