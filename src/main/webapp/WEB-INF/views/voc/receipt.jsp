<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
<meta http-equiv="X-UA-Compatible" content="ie=edge"> 
<script src="http://code.jquery.com/jquery-latest.js"></script>
<title>VOC</title> 
<style>
 .div1 { display: none; }
 .div2 { display: none; }
</style>
 <script type="text/javascript"> 

 $(document).ready(function(){
	 
	    // 라디오버튼 클릭시 이벤트 발생
	    $("input:radio[name=im_name]").click(function(){
	 
	        if($("input[name=im_name]:checked").val() == "client"){
	        	$('.div1').show();
	            // radio 버튼의 value 값이 1이라면 활성화
	 
	        }else{
		    	$('.div1').hide();
		    }
	    });
	});

 $(document).ready(function(){
	 
	    // 라디오버튼 클릭시 이벤트 발생
	    $("input:radio[name=im_name]").click(function(){
	 
	        if($("input[name=im_name]:checked").val() == "delivery"){
	        	$('.div2').show();
	            // radio 버튼의 value 값이 1이라면 활성화
	 
	        }else{
		    	$('.div2').hide();
		    }
	    });
	});
 
 </script>
</head>
<%@ include file="../common/header.jsp" %>
<div class="container">
            <section class="resume-section" id="write">
                <div class="resume-section-content">
                    <h2 class="mb-5">VOC</h2>
 <form role="form" action="/Project/voc/register" method="post">

 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <div class="col-sm-6">
    <label for="c_name" class="form-label">CLIENT COMPANY</label>
    <input type="text" name="c_name" value="${list.c_name}" readonly>
    </div>
     
    <div class="col-sm-6">
    <label for="ca_name" class="form-label">DELIVERY COMPANY</label>
    <input type="text" name="ca_name" value="${list.ca_name}" readonly>
    </div> 
     
        <div class="col-sm-6">
    <label for="d_name" class="form-label">DRIVER NAME</label>
    <input type="text" name="d_name" value="${list.d_name}" readonly>
    </div> 
    
            <div class="col-sm-6">
    <label for="d_name" class="form-label">DRIVER NUMBER</label>
    <input type="text" name="d_num" value="${list2.d_num}" readonly>
    </div> 
    
    
    <div class="col-sm-6">
    <label for="pr_num" class="form-label">DELIVERY NUMBER</label>
    <input type="text" name="pr_num" value="${list.pr_num}" readonly>
    </div>  
     
    <div class="col-sm-6">
    <label for="c_content" class="form-label">CLAIM</label>
    <input type="text" name="c_content" value="${list.im_content}" readonly>
    </div>
    
    <div class="col-sm-6">
    <label for="im_name" class="form-label">RESPONSIBILITY</label>
    <input type="radio" id='im_name' name="im_name" value='client'>client company
    <input type="radio" id='im_name' name="im_name" value='delivery'>delivery company
    </div>

    <div class="div1">
    <div class="col-sm-6">
    <label for="im_content" class="form-label">CLIENT COMPANY</label>
  <select id='im_content' name="im_content">
    <option value="">---------</option>
			<option value="missing the product">missing the product</option>
			<option value="wrong product">wrong product</option>
   </select>
    </div>
    </div>

    <div class="div2">
    <div class="col-sm-6">
    <label for="im_content" class="form-label">DELIVERY COMPANY</label>
  <select id='im_content' name="im_content">
    <option value="">---------</option>
			<option value="delayed delivery">delayed delivery</option>
			<option value="wrong delivery">wrong delivery</option>
   </select>
    </div>
    </div>

    <div class="col-sm-6">
    <label for="im_re" class="form-label">COMPENSATION</label>
    <input type="text" name="im_re" value='${list.im_re}' readonly>
    </div>
     	

 <br>
<input type="submit" value="register">
<input type="reset" value="reset">
</form>
</div>
</section>
	</body>
</html>