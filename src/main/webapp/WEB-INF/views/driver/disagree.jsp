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
 <form role="form" action="/Product/driver/disagree" method="post">   
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

    <tr>
    <td>DiSAGREE CATEGORY</td>
      <td><select id='dis_ca' name="dis_ca">
    <option value="">---------</option>
			<option value="I don't agree with the claim">I don't agree with the claim</option>
			<option value="I don't agree with the amount of compensation">I don't agree with the amount of compensation</option>
   </select>
   </td>
    </tr>
    
 <tr>
	<td>DISAGREE REASON</td>
	<td><textarea cols="50" rows="5" name="dis_re" required></textarea>
	</tr>
	

  </table>
  <br>

<input type="submit" value="register">
</form>


  <button class="w-40 btn btn-lg btn-primary" type="submit" data-oper='list' onclick="location.href='/Project/driver/list?d_num=${board.d_num}'" class="btn btn-default">list</button>
</div>

</section>
			
	</body>
</html>