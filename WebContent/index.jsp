<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "total.TotalDAO" %>
    
    <%
    	TotalDAO td = new TotalDAO();
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
<title>MBTI테스트</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="custom.css" />
</head>
<body>
<div class="container">
	<div class="top">
		<a href="index.jsp"><img src="./img/top.png" alt="" style="width:100%"></a>
	</div>
	<article class="home">
	<img src="./img/main.png" alt="" style="width:100%">
	<h1 style="color:#693b33">( 참여자 수 )<br><%= td.selectTotal() %>명</h1><br>
	<button type="button" class="btn btn-primary" onclick="start();">테스트 시작하기</button>
	</article>
	
	<article class="question">
	<form method="post" action="<%= request.getContextPath() %>/result" >
		<div class="q1">
			<h2>스스로를 몽상가라 생각하지 않습니다.<br><br></h2>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="sn1" id="inlineRadio1" value="1">
			  <label class="form-check-label" for="inlineRadio1">매우그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="sn1" id="inlineRadio2" value="1">
			  <label class="form-check-label" for="inlineRadio2">그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="sn1" id="inlineRadio3" value="0">
			  <label class="form-check-label" for="inlineRadio3">아니다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="sn1" id="inlineRadio4" value="0">
			  <label class="form-check-label" for="inlineRadio4">전혀아니다</label>
			</div>
		</div><br><hr/>
		
		<div class="q2">
			<h2>논쟁에서 이기는 것이 상대방의 감정보다 더 중요합니다.<br><br></h2>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="tf1" id="inlineRadio5" value="1">
			  <label class="form-check-label" for="inlineRadio5">매우 그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="tf1" id="inlineRadio6" value="1">
			  <label class="form-check-label" for="inlineRadio6">그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="tf1" id="inlineRadio7" value="0">
			  <label class="form-check-label" for="inlineRadio7">아니다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="tf1" id="inlineRadio8" value="0">
			  <label class="form-check-label" for="inlineRadio8">전혀 아니다</label>
			</div>
		</div><br><hr/>
		
		<div class="q3">
			<h2>보통 여행 계획은 철저하게 세우는 편입니다.<br><br></h2>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="jp1" id="inlineRadio9" value="1">
			  <label class="form-check-label" for="inlineRadio9">매우 그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="jp1" id="inlineRadio10" value="1">
			  <label class="form-check-label" for="inlineRadio10">그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="jp1" id="inlineRadio11" value="0">
			  <label class="form-check-label" for="inlineRadio11">아니다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="jp1" id="inlineRadio12" value="0">
			  <label class="form-check-label" for="inlineRadio12">전혀 아니다</label>
			</div>
		</div><br><hr/>
		
		<div class="q4">
			<h2>다소 내성적이고 조용한 성격입니다.<br><br></h2>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="ei1" id="inlineRadio13" value="0">
			  <label class="form-check-label" for="inlineRadio13">매우 그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="ei1" id="inlineRadio14" value="0">
			  <label class="form-check-label" for="inlineRadio14">그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="ei1" id="inlineRadio15" value="1">
			  <label class="form-check-label" for="inlineRadio15">아니다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="ei1" id="inlineRadio16" value="1">
			  <label class="form-check-label" for="inlineRadio16">전혀 아니다</label>
			</div>
		</div><br><hr/>
		
		<div class="q5">
			<h2>공상과 아이디어 때문에 흥분하는 일은 없습니다.<br><br></h2>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="sn2" id="inlineRadio17" value="1">
			  <label class="form-check-label" for="inlineRadio17">매우 그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="sn2" id="inlineRadio18" value="1">
			  <label class="form-check-label" for="inlineRadio18">그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="sn2" id="inlineRadio19" value="0">
			  <label class="form-check-label" for="inlineRadio19">아니다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="sn2" id="inlineRadio20" value="0">
			  <label class="form-check-label" for="inlineRadio20">전혀 아니다</label>
			</div>
		</div><br><hr/>
		
		<div class="q6">
			<h2>구체적인 계획을 갖고 시간을 보내기보다는 다소 즉흥적으로 움직입니다.<br><br></h2>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="jp2" id="inlineRadio21" value="0">
			  <label class="form-check-label" for="inlineRadio21">매우 그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="jp2" id="inlineRadio22" value="0">
			  <label class="form-check-label" for="inlineRadio22">그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="jp2" id="inlineRadio23" value="1">
			  <label class="form-check-label" for="inlineRadio23">아니다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="jp2" id="inlineRadio24" value="1">
			  <label class="form-check-label" for="inlineRadio24">전혀 아니다</label>
			</div>
		</div><br><hr/>
		
		<div class="q7">
			<h2>금방 새로운 직장 사람들과 어울리기 시작합니다.<br><br></h2>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="ei2" id="inlineRadio25" value="1">
			  <label class="form-check-label" for="inlineRadio25">매우 그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="ei2" id="inlineRadio26" value="1">
			  <label class="form-check-label" for="inlineRadio26">그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="ei2" id="inlineRadio27" value="0">
			  <label class="form-check-label" for="inlineRadio27">아니다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="ei2" id="inlineRadio28" value="0">
			  <label class="form-check-label" for="inlineRadio28">전혀 아니다</label>
			</div>
		</div><br><hr/>
		
		<div class="q8">
			<h2>토론 시 사람들의 민감한 반응보다 보다 진실을 더 중요시해야 합니다.<br><br></h2>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="tf2" id="inlineRadio29" value="1">
			  <label class="form-check-label" for="inlineRadio29">매우 그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="tf2" id="inlineRadio30" value="1">
			  <label class="form-check-label" for="inlineRadio30">그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="tf2" id="inlineRadio31" value="0">
			  <label class="form-check-label" for="inlineRadio31">아니다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="tf2" id="inlineRadio32" value="0">
			  <label class="form-check-label" for="inlineRadio32">전혀 아니다</label>
			</div>
		</div><br><hr/>
		
		<div class="q9">
			<h2>대체로 상상보다는 경험에 더 의존하는 편입니다.<br><br></h2>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="sn3" id="inlineRadio33" value="1">
			  <label class="form-check-label" for="inlineRadio33">매우 그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="sn3" id="inlineRadio34" value="1">
			  <label class="form-check-label" for="inlineRadio34">그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="sn3" id="inlineRadio35" value="0">
			  <label class="form-check-label" for="inlineRadio35">아니다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="sn3" id="inlineRadio36" value="0">
			  <label class="form-check-label" for="inlineRadio36">전혀 아니다</label>
			</div>
		</div><br><hr/>
		
		<div class="q10">
			<h2>계획의 수립과 이행은 모든 프로젝트에서 가장 중요한 부분입니다.<br><br></h2>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="jp3" id="inlineRadio37" value="1">
			  <label class="form-check-label" for="inlineRadio37">매우 그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="jp3" id="inlineRadio38" value="1">
			  <label class="form-check-label" for="inlineRadio38">그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="jp3" id="inlineRadio39" value="0">
			  <label class="form-check-label" for="inlineRadio39">아니다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="jp3" id="inlineRadio40" value="0">
			  <label class="form-check-label" for="inlineRadio40">전혀 아니다</label>
			</div>
		</div><br><hr/>
		
		<div class="q11">
			<h2>다른 사람들에게 자신을 소개하는 것을 어려워 합니다.<br><br></h2>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="ei3" id="inlineRadio41" value="0">
			  <label class="form-check-label" for="inlineRadio41">매우 그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="ei3" id="inlineRadio42" value="0">
			  <label class="form-check-label" for="inlineRadio42">그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="ei3" id="inlineRadio43" value="1">
			  <label class="form-check-label" for="inlineRadio43">아니다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="ei3" id="inlineRadio44" value="1">
			  <label class="form-check-label" for="inlineRadio44">전혀 아니다</label>
			</div>
		</div><br><hr/>
		
		<div class="q12">
			<h2>자신의 행동이 다른 사람들에게 어떠한 영향을 주는 지에 대해 거의 걱정하지 않습니다.<br><br></h2>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="tf3" id="inlineRadio45" value="1">
			  <label class="form-check-label" for="inlineRadio45">매우 그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="tf3" id="inlineRadio46" value="1">
			  <label class="form-check-label" for="inlineRadio46">그렇다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="tf3" id="inlineRadio47" value="0">
			  <label class="form-check-label" for="inlineRadio47">아니다</label>
			</div>
			<div class="form-check form-check-inline">
			  <input class="form-check-input" type="radio" name="tf3" id="inlineRadio48" value="0">
			  <label class="form-check-label" for="inlineRadio48">전혀 아니다</label>
			</div>
		</div><br><hr/>
		
		<input type="submit" class="btn btn-primary mt-5" value="결과 보기" />
	</form>
		
	</article>
	
	<footer class="mt-5 mb-5">
	<br>Copyright &copy; 2021 김태민 All Rights Reserved.<br>
	이 사이트는 그 어떠한 상업적 목적도 없습니다.
	</footer>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    
<script>
function start() {
    $(".home").hide();
    $(".question").show();
  }
</script>
</body>
</html>