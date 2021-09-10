<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
 %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>MBTI테스트 결과</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="custom.css">
</head>
<body>
<div class="container">
	<div class="top">
		<a href="index.jsp"><img src="./img/top.png" alt="" style="width:100%"></a>
	</div>
	
	<article class="result">
		<h1>${mbti}</h1>
		<h3>당신과 닮은 강아지는 :</h3>
		<img src="${img}" alt="" style="width:100%;"/>
		<h1><br>${result}</h1>
		<h5>${explanation}</h5>
		<h1>나랑 같은 MBTI를 가진 사람들<br>${avg}%</h1><br>
	</article>
	<button type="button" class="btn btn-primary" onclick="location.href='<%= request.getContextPath() %>/index'">테스트 다시하기</button>
	
	<footer class="mt-5 mb-5">
	<br>Copyright &copy; 2021 김태민 All Rights Reserved.<br>
	이 사이트는 그 어떠한 상업적 목적도 없습니다.
	</footer>
</div>

</body>
</html>