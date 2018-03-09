<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	div#write1{
		padding:5px;
	}
	div#write2{
		width: 700px;
		border:3px solid black;
		padding:5px;
		margin-left: auto;
		margin-right: auto;
		margin-top: 50px;
	}
	table{
		border-collapse:collapse;
		
		padding:5px;
		width:460px;
		margin-left: auto;
		margin-right: auto;
	}
	tr:first-child {
		padding-top:10px;
		border-top:1px solid black;
		border-bottom:1px solid black;
		border-right:1px solid black;
		background-color: #FFF0F0;
	}
	tr:last-child{
		border-top: 1px solid black;
	} 
	tr{
		border-top: 1px dotted #FFBEBE;
		padding:10px;
	}
	td{
		
		padding: 5px;
		
	}
	td.cen{
		text-align:center;
		border-left: 1px solid black;
	}
	td.cen2{
		
		border-right: 1px solid black;
	}
	
</style>
</head>
<body>
<div id="write1">
<div id="write2">

<form action="write" method="post">

	<table>
		<tr>
			<td colspan="2" class="cen"><h1>글작성</h1></td>
		</tr>
		<tr>
			<td class="cen">글제목</td>
			<td class="cen2"><input type="text" name="title" size="50"/></td>
		</tr>
		<tr>
			<td class="cen">작성자</td>
			<td class="cen2"><input type="text"  name="name"  size="50"/></td>
		</tr>
		<tr>
			<td class="cen">본문</td>
			<td colspan="2" class="cen2"><textarea rows="8" cols="51" name="content"></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="center"><input type="submit" value="글쓰기" /></td>
		</tr>
	</table>
</form>
</div>
</div>
</body>
</html>