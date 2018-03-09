<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
div#login1{
/* 	border:1px solid black; */
	padding:5px;
}
div#login2{
	border:3px solid black;
	padding:5px;
	height:200px;
	width:315px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 200px;
}
div#log{
		border-bottom: 1px solid red;
		width:315px;
}
	table{
		border-collapse:collapse;
		margin-top: 20px;
	}
	tr:first-child{
		
		padding-top:10px;
	}
	td{
		padding-right: 5px;
		
	}
	a{
		text-decoration: none;
		font-size: 12px;
	}
	a:link{color:black;}
	a:visited {color:black;}
	a:hover {color:red;text-decoration: underline;}

</style>
<script type="text/javascript">
function logincheck() {
	var form = document.login_ch;
	if(!form.mid.value){
		alert("ID를 입력하세요");
		return false;
	}else
	if(!form.mpwd.value){
		alert("pwd를 입력하세요");
		return false;
	}
}
</script>
</head>
<body>
	<c:set var="sId" value="${ID }" />
	
	<c:choose>
		<c:when test="${sId !=null }">
			<h1>로그인 성공</h1>
			<a href="list">게시판</a> <a href="logout">로그아웃</a>
		</c:when>
		<c:otherwise>
		<div id="login1">
		<div id="login2">
			<form name="login_ch" action="login" method="post" onsubmit="return logincheck()">
			<div id="log">
				<h2>Login</h2>
			</div>
				<table>
					<tr>
						<td>아이디</td><td><input type="text" name="mid"/></td><td rowspan="2"><input type="submit" value="로그인" style="height:50px;"/></td>
					</tr>
					<tr>
						<td>비밀번호</td><td><input type="password" name="mpwd"/></td>
					</tr>
					<tr>
						<td></td><td align="right"><a href="joinForm">회원가입</a></td>
					</tr>
				</table>
			
			</form>
		</div>
		</div>
	</c:otherwise>
</c:choose>
</body>
</html>