<jsp:directive.page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" />

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
	<jsp:include page="../common/menubar.jsp"/>
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
		 		<div class="login-formarea" align="center" 
		 			style="border: 5px groove #48BAE4; height: auto; padding: 10px; margin-top:100px">
					<c:if test="${ empty sessionScope.loginUser }">
						<form id="joinForm" action="${ applicationScope.contextPath }/login.me" method="post">
							<table>
								<tr>
									<td><h2 align="center">회원가입</h2></td>
								</tr>
								<tr>
									<!-- <td> * 아이디 </td>  -->
									<td><input type="text" name="userId"  placeholder="아이디(이메일주소)" 
												onfocus="this.placeholder=''" onblur="this.placeholder='아이디(이메일)'"/></td>
								</tr>
								<tr>
									<!-- <td>* 비밀번호 </td>  -->
									<td><input type="password" name="userPwd" placeholder="비밀번호" 
												onfocus="this.placeholder=''" onblur="this.placeholder='비밀번호'"/></td>
								</tr>
								<tr>
									<!-- <td> * 비밀번호확인</td> -->
									<td><input type="password" maxlength="13" name="userPwd2" placeholder="비밀번호 확인" 
												onfocus="this.placeholder=''" onblur="this.placeholder='비밀번호 확인'"/></td>
									<td><label id="pwdResult"></label></td>
								</tr>
								<tr>
									<!-- <td>* 이름 </td> -->
									<td><input type="text" maxlength="5" name="userName" placeholder="이름" 
												onfocus="this.placeholder=''" onblur="this.placeholder='이름'"/></td>
									<td><label id="nnResult"></label></td>
								</tr>
								<tr>
									<!-- <td>* 닉네임 </td> -->
									<td><input type="text" maxlength="5" name="nickName" placeholder="닉네임" 
												onfocus="this.placeholder=''" onblur="this.placeholder='닉네임'"/></td>
									<td><label id="nnResult"></label></td>
								</tr>
								<tr>
									<td>연락처 </td>
									<td>
										<input type="text" maxlength="3" name="tel1" size="2">-
										<input type="text" maxlength="4" name="tel2" size="2">-
										<input type="text" maxlength="4" name="tel3" size="2">
									</td>
								<td><label id="nnResult"></label></td>
								</tr>
							</table>
							<div class="btns" align="center">
								<div id="memberJoinBtn" onclick="insertMember();">계정 만들기</div>
								<div id="loginBtn" onclick="goMain();">로그인</div>
								<div onclick="searchPwd();"><a>비밀번호를 잊으셨나요?</a></div>	
							</div>
						</form>
					</c:if>
				</div>
			</div>
			<!-- login-area end -->
		</div>		
		<!-- Pc_middle_area end -->
	
		<!-- footer -->
		<!-- footer end -->
	</div>
	<script>
		function goMain() {
			location.href = "${applicationScope.contextPath}/index.jsp";
		}
		
		function insertMember() {
			$("#joinForm").submit();
			
		}
		
	</script>
</body>
</html>