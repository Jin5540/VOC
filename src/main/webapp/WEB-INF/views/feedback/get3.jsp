<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> 
<!DOCTYPE html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/Product/resources/js/reply.js"></script>
<script>
/*
 * 댓글 등록하기(Ajax)
 */
function fn_comment(code){
    
    $.ajax({
        type:'POST',
        url : "<c:url value='/Project/replies/add'/>",
        data:$("#commentForm").serialize(),
        success : function(data){
            if(data=="success")
            {
                getCommentList();
                $("#comment").val("");
            }
        },
        error:function(request,status,error){
            //alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
       }
        
    });
}
 
/**
 * 초기 페이지 로딩시 댓글 불러오기
 */
$(function(){
    
    getCommentList();
    
});
 
/**
 * 댓글 불러오기(Ajax)
 */
function getCommentList(){
    
    $.ajax({
        type:'GET',
        url : "<c:url value='/Project/replies/list'/>",
        dataType : "json",
        data:$("#commentForm").serialize(),
        contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
        success : function(data){
            
            var html = "";
            var cCnt = data.length;
            
            if(data.length > 0){
                
                for(i=0; i<data.length; i++){
                    html += "<div>";
                    html += "<div><table class='table'><h6><strong>"+data[i].replyer+"</strong></h6>";
                    html += data[i].reply + "<tr><td></td></tr>";
                    html += "</table></div>";
                    html += "</div>";
                }
                
            } else {
                
                html += "<div>";
                html += "<div><table class='table'><h6><strong>등록된 댓글이 없습니다.</strong></h6>";
                html += "</table></div>";
                html += "</div>";
                
            }
            
            $("#cCnt").html(cCnt);
            $("#commentList").html(html);
            
        },
        error:function(request,status,error){
            
       }
        
    });
}
 
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
  <div class="container">
    <form id="commentForm" name="commentForm" method="post">
    <br><br>
        <div>
            <div>
                <span><strong>Comments</strong></span> <span id="cCnt"></span>
            </div>
            <div>
                <table class="table">                    
                    <tr>
                        <td>
                            <textarea style="width: 1100px" rows="3" cols="30" id="reply" name="reply" placeholder="댓글을 입력하세요"></textarea>
                            <br>
                            <div>
                                <a href='#' onClick="fn_comment('${aid}')" class="btn pull-right btn-warning">register</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="aid" name="aid" value="${aid}" />        
    </form>
</div>
<div class="container">
    <form id="commentListForm" name="commentListForm" method="post">
        <div id="commentList">
        </div>
    </form>
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