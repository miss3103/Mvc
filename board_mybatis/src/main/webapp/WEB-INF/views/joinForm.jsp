<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function joincheck() {
		var form = document.userInfo;
		if(!form.id.value){
			alert("ID를 입력하세요");
			return false;
		}else
		if(!form.pwd.value){
			alert("pwd를 입력하세요");
			return false;
		}else
		if(!form.name.value){
			alert("name를 입력하세요");
			return false;
		}
	}
</script>
<style type="text/css">
	table{
		border-collapse:collapse;
		width:700px;
		
	}
	
	tr:first-child{
 		border-top: 1px solid black;
	}
	tr{
		border-top: 1px solid black;
	}
	tr:last-child{
 		border-top: 1px solid black;
	}
	td{
		padding: 10px;
		
	}
	div#join1{
		width: 99%;
		
	}
	div#join2{
		width: 700px;
		border:3px solid black;
		margin-left: auto;
		margin-right: auto;
		padding: 5px;
		margin-top: 200px;
		
	}
	.bc{
		text-align: right;
		width:100px;
	}
</style>
</head>
<body>
	<div id="join1">
		<div id="join2">
			<form  name="userInfo" action="join" method="post" onsubmit="return joincheck()">
			<h1>회원가입</h1>
			<table>
				<tr>
					<td class="bc">아이디</td><td><input type="text" name="id"/></td>
					
				</tr>
				<tr>
					<td class="bc">비밀번호</td><td><input type="password" name="pwd"/></td>
				</tr>
				<tr>
					<td class="bc">이름</td><td><input type="text" name="name"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="회원가입"/> <input type="button" onclick="javascript:history.back()" value="뒤로"/></td>
				</tr>
			</table>
			</form>
		</div>
	</div>
</body>
</html>