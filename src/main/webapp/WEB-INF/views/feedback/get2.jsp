<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> 
<!DOCTYPE html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/Product/resources/js/reply.js"></script>
<script type="text/javascript">
console.log("====================");
$(document).ready(function(){
	var aidValue = '<c:out value="${aid}"/>';
	var replyUL = $(".chat");
	
	showList(1);
	
	function showList(page){
		replyService.getList({aid:aidValue}),function(list){
			var str="";
			if(list == null || list.length == 0){
				
				replyUL.html("");
				return;
			}
			for(var i=0, len=list.length || 0; i<len; i++)
				{
				str+="<li class='left clearfix' data-rno='"+list[i].rno"'>";
				str+="<div><div class='header'><strong class='primary-font'>"+list[i].replayer+"</strong>";
				str+="<small class='pull-right text-muted'>"+list[i].replyDate+"</small></div>";
				str+="<p>"+list[i].reply+"</p></div></li>";
				}
				
			replyUL.html(str);
		});
	}
	
	var modal=$(".modal");
	var modalInputReply = modal.find("input[name='reply']");
	var modalInputReplyer = modal.find("input[name='replyer']");
	var modalInputReplyDate = modal.find("input[name='replyDate']");
	
	var modalClassBtn = $("modalClassBtn");
	
	$("#addReplyBtn").on("click",funtion(e){
		modal.find("input").val("");
		modalInputReplyDate.closest("div").hide();
		modal.find("button[id!='modalCloseBtn']").hide();
		
		modalClassBtn.show();
		
		$(".modal").modal("show");
		
	});

	modalClassBtn.on("click",function(e){
		var reply={
				reply : modalInputReply.val();
		replyer : modalInputReplyer.val();
		aid : aidValue;
		};
		
		replyService.add(reply,function(result){
			
			alert(result);
			
			modal.find("input").val("");
			modal.modal("hide");

		});	
});

</script>
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
  <div class='row'>
  <div class='col-lg-12'>
  <div class="panel panel-default">
  <div class="panel-heading">
  <i class="fa fa-comments fa-fw"></i> Reply
  <button id='addReplyBtn' name="addReplyBtn">New Reply</button>
  </div>
 
  <div class="panel-body">
 <ul class="chat">
 <li class="left clearfix" data-rno='12'>
 <div>
 <div class="header">
 <strong class="primary-font">user00</strong>
 <small class="pull-right text-muted">2022-01-30 18:30 </small>
 </div>
 <p>good</p>
 </div>
 </li>
 </ul>
 </div>
 </div>
 </div>
 </div>
 </div>
 <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
 <div class="modal-dialog">
 <div class="modal-content">
 <div class="modal-header">
 <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
<h4 class="modal-title" id="myModalLabel"> REPLY MODAL</h4>
</div>
<div class="modal-body">
<div class="form-group">
<label>Reply</label>
<input class="form-control" name='reply'>
</div>
<div class="form-group">
<label>Replyer</label>
<input class="form-control" name='replyer'>
</div>
<div class="form-group">
<label>Reply Date</label>
<input class="form-control" name='replyDate'>
</div>
</div>
</div>
<div class="modal-footer">
<button id='modalClassBtn' type="button" class="btn btn-default" data-dismiss='modal'>Register</button>
<button id='modalCloseBtn' type="button" class="btn btn-default" data-dismiss='modal'>Register</button>
</div>
</div>
</div>
  <br>
  <sec:authorize access="hasRole('ROLE_ADMIN')">
  <button class="w-40 btn btn-lg btn-primary" type="submit" data-oper='receipt' onclick="location.href='/Project/voc/receipt?aid=${board.aid}&pr_num=${board.pr_num}'" class="btn btn-default">receipt</button>

  </sec:authorize>
  <button class="w-40 btn btn-lg btn-primary" type="submit" data-oper='list' onclick="location.href='/Project/feedback/list'" class="btn btn-default">list</button>
</div>

</section>
			
	</body>
</html>