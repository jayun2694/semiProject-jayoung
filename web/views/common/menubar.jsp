<jsp:directive.page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"/>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
	ul li {list-style-type:none; display:inline;}
</style>
</head>
<body>
	<div>
		<!-- pc_top_area start  -->
		<div class="pc_top" align="center">
			<div align="center" class="pc_menu">
				<div style="width: 30%; height:50px; float: left;">
					<h3><a href="#"><img>내가 사는 그 집</a></h3>
				</div>
				<div style="width: 60%; height:50px; float: right;">
					<ul>
						<li><a>ABOUT</a></li>
						<li><a>우리동네</a></li>
						<li><a>시공후기</a></li>
						<li><a>가이드</a></li>
						<li><a>고객센터</a></li>
						<li><a href="#">로그인</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- pc_top_area end  -->
	
		<!-- Pc_middle_area start -->
		<div class="pc_middle" align="center">
			<!-- Pc_middle_area_ima  start -->
			<div class="ima_area" style="width: 45%; height:400px; float: left;">
				<ima/>
			</div>
			<!-- Pc_middle_area_ima end -->
		
			<!-- login-area start -->
			<div class="login-area" style="width: 45%; height:400px; float: right;">
			
				<!-- login form area -->
		 		<div class="login-formarea" align="center" 
		 			style="border: 5px groove #48BAE4; height: auto; padding: 10px; margin-top:100px">
					<c:if test="${ empty sessionScope.loginUser }">
						<form id="loginForm" action="${ applicationScope.contextPath }/login.me" method="post">
							<table>
								<tr>
									<td><h2 align="center">로그인</h2></td>
								</tr>
								<tr>
									<!-- <td><label class="text">ID : </label></td>  -->
									<td><input type="text" name="userId"  placeholder="아이디(이메일주소)" 
												onfocus="this.placeholder=''" onblur="this.placeholder='아이디(이메일)'"/></td>
								</tr>
								<tr>
									<!-- <td><label class="text">PWD : </label></td>  -->
									<td><input type="password" name="userPwd" placeholder="비밀번호" 
												onfocus="this.placeholder=''" onblur="this.placeholder='비밀번호'"/></td>
								</tr>
							</table>
							<div class="btns" align="center">
								<div id="loginBtn" onclick="login();">로그인</div>
								<div id="memberJoinBtn" onclick="memberJoin();">계정만들기</div>
								<div onclick="searchPwd();"><a>비밀번호를 잊으셨나요?</a></div>	
							</div>
						</form>
						<!-- login form area end -->
					</c:if>
				</div>
			</div>
			<!-- login-area end -->
		</div>		
		<!-- Pc_middle_area end -->
	
		<!-- footer -->
		<!-- footer end -->
	</div>
	<!-- Script  -->
	<script>
		function login() {
			$("#loginForm").submit();
		}
		
		function memberJoin() {
			location.href = "${ applicationScope.contextPath }/views/member/memberJoinForm.jsp";
		}
		
	</script>	

	
</body>
</html>