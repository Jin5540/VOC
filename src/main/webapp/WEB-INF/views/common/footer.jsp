<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

						</div>
					</div>

<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Search -->
								<section id="search" class="alt">
									<form method="post" action="#">
										<input type="text" name="query" id="query" placeholder="Search" />
									</form>
								</section>

							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>메뉴</h2>
									</header>
									<ul>
										<li><a href="/Spring20/">홈페이지</a></li>
										<li><a href="/Spring20/news/list">뉴스</a></li>
										<li>
										<sec:authorize access="isAnonymous()">

											<span class="opener">회원</span>
											<ul>
												<li><a href="/Spring20/member/customJoin">회원가입</a></li>
												<li><a href="/Spring20/member/customLogin">로그인</a></li>
												</ul>
</sec:authorize>

<sec:authorize access="isAuthenticated()">
<span class="opener">회원</span>
											<ul>
<li><a href="/Spring20/member/read">마이페이지</a></li>
<li><a href="/Spring20/member/list">회원목록</a></li>
												<li><a href="#" onclick="document.getElementById('Logout').submit();">로그아웃</a></li>
											
												</ul>
												<form id="Logout" action="/logout" method="POST">
   <input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
</form>
</sec:authorize>

										</li>
										
									</ul>
								</nav>





							<!-- Section -->
								<section>
									<header class="major">
										<h2>Get in touch</h2>
									</header>
									<p>Although no one can go back to the past and make a fresh start, anyone can start now and create a new ending. Don't worry that you don't have enough time for everything, but let's just worry about whether I can do my best with all my heart.</p>
									<ul class="contact">
										<li class="icon solid fa-envelope"><a href="mailto:xxxx4446550@naver.com">xxxx4446550@naver.com</a></li>
										<li class="icon solid fa-phone">(010) 3046-7201</li>
										<li class="icon solid fa-home">Sejongsi,SouthKorea<br />
										</li>
									</ul>
								</section>



						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="/Spring20/resources/assets/js/jquery.min.js"></script>
			<script src="/Spring20/resources/assets/js/browser.min.js"></script>
			<script src="/Spring20/resources/assets/js/breakpoints.min.js"></script>
			<script src="/Spring20/resources/assets/js/util.js"></script>
			<script src="/Spring20/resources/assets/js/main.js"></script>
</body>
</html>