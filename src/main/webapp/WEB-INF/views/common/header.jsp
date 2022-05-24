<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> 
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>DEW DELIVERY</title>
        <link rel="icon" type="/Project/resources/image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/Project/resources/css/styles.css" rel="stylesheet" />
    </head>
	<body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">
                <span class="d-block d-lg-none">DEW DELIVERY</span>
                <span class="d-none d-lg-block"><img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="/Project/resources/assets/img/dew1.jpg" alt="..." /></span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav">
               
                    	<sec:authorize access="isAnonymous()">


												<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/Project/member/customJoin">Join</a></li>
												<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/Project/member/customLogin">Login</a></li>

                    	</sec:authorize>
                    	                    	<sec:authorize access="hasRole('ROLE_ADMIN')">


												<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/Project/voc/list">Customer inquiry</a></li>
												<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/Project/Compensation/list">Compensation</a></li>

                    	</sec:authorize>
                    	
                    	                   	                    	<sec:authorize access="hasRole('ROLE_CARRIER')">


												<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/Project/driver/mypage">Mypage</a></li>

                    	</sec:authorize>
                    	<sec:authorize access="hasAnyRole('ROLE_CLIENT','ROLE_ADMIN')">

	<li class="nav-item"><a class="nav-link js-scroll-trigger" href="/Project/feedback/list">Customer Voice</a></li>
												<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#" onclick="document.getElementById('Logout').submit();">Logout</a></li>
											
</sec:authorize>
<sec:authorize access="isAuthenticated()">		
												<form id="Logout" action="/Project/logout" method="POST">
   <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
</form>
</sec:authorize>
                    	
                </ul>
            </div>
        </nav>

							

	</body>
</html>