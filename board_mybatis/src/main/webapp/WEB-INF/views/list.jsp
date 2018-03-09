<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
     <%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table{
	width: 700px;
	border-collapse:collapse;
	text-align: center;
}
tr:first-child{
 		border-top: 3px solid red;
	}
	tr{
		border-top: 1px solid red;
	}
	tr:last-child{
 		border-top: 3px solid red;
	}
	td{
		padding: 10px;
	}
div#list1{
/* 	border:1px solid black; */
	padding:5px;
}
div#list2{
	width: 700px;
	border:3px solid black;
	padding:5px;
	margin-left: auto;
	margin-right: auto;
	margin-top: 50px;
}
	a{
		text-decoration: none;
	}
	a:link{color:black;}
	a:visited {color:black;}
	a:hover {color:red;text-decoration: underline;}
</style>
</head>
<body>
<div id="list1">
<div id="list2">
<h1>게시판</h1>
<table>
	<tr>
		<td>글번호</td>
		<td>글제목</td>
		<td>작성자</td>
		<td>작성일</td>
		<td>삭제</td>
	</tr>
	<c:forEach items="${list }" var="dto">
		<tr>
			<td>${dto.bId }</td>
			<td>${dto.bTitle }</td>
			<td>${dto.bName }</td>
			<td>${dto.bData }</td>
			<td><a href="delete?bId=${dto.bId }">X</a></td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan="5" align="left"><a href="writeForm">[글쓰기]</a><a href="loginForm">[로그인 확인]</a></td>
	</tr>
</table>
</div>
</div>
</body>
</html>