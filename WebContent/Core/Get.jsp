<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get.jsp</title>
<!-- jQuery사용을 위한 라이브러리 임베딩-->
<!-- 1]다운받은  .js파일 임베디드 -->
<!--  
<script src="<c:url value="/js/jquery-3.5.1.js"/>"></script>
-->
<!-- 2]CDN(Content Deliver Network)주소 사용 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	
	$(function(){
		//1.팩토리 함수$()로 jQuery DOM객체 얻는다 . jQuery DOM객체에만 jQuery함수 적용 가능
		var jQueryDom=$('#naver');//제이쿼리 DOM객체
		//2.자바 스크립트로 브라우저 DOM객체 얻기-jQuery함수 적용 불가능
		var jsDom = document.getElementById("naver");
		console.log('jQueryDom:%O',jQueryDom);
		console.log('jsDom:%O',jsDom);
		//jQueryDom.css('color','red').html('NAVER');//[O]
		//jQueryDom.style.color='red';//[x]jQueryDom.style is undefined
		//jsDom.css('color','red').html('NAVER');//[X] jsDom.css is not a function
		jsDom.style.color='red';//[o]
		jsDom.innerHTML='NAVER';//[o]
		//3.jQuery함수 get()로 브라우저 DOM객체 얻기]
		//get(인덱스):jQuery DOM객체를 자바스크립트 DOM객체로 변환
		//          인덱스-선택된 jQuery DOM객체중 인덱스값(인덱스는 0부터 시작)
		//console.log($('#naver').href);//undefined
		//제이쿼리 DOM객체를 브라우저 DOM객체로 변환
		console.log($('#naver').get(0).href);//http://www.naver.com/
		
		$('input[type=button]:first').click(function(){
			//1.자스 함수 이용
			console.log('자스 사용 : ',document.getElementById("txt").value);
			//2.jQuery함수 이용
			console.log('제이쿼리 함수 사용(get) : ',$('#txt').get(0).value);
			console.log('제이쿼리 함수 사용(val) : ',$('#txt').val());
			
		});
		
		//문]"텍스트 변경하기" 버튼 클릭시 "실습입니다"라는 
		//   텍스트 색상을 빨간색으로
		//   글자크기는 1.8em으로 변경해라.자스(ES5)와 제이쿼리버전 둘다]
		//자스(ES5) 버전]
		/*
		var button = document.getElementsByTagName("input")[2];
		var span   = document.getElementsByTagName("span")[0];
		
		button.addEventListener("click",function(){
			span.style.color='red';
			span.style.fontSize='1.8em';
			
		});*/
		//제이쿼리 버전]
		var button = $('input[type="button"]:last');
		var span   = $('span');

		button.click(function(){
			//제이쿼리 DOM객체에 제이쿼리 함수 바로 적용
			//span.css('color','red').css('fontSize','1.8em');
			//제이쿼리 DOM객체를 브라우저 DOM 객체로 변경후 적용
			span.get(0).style.color='red';
			span.get(0).style.fontSize='1.8em';
		});
	});
</script>
</head>
<body>
	<fieldset>
		<legend>get(인덱스)함수</legend>
		<input type="text" value="텍스트값" id="txt"/>
	    <input type="button" value="확인" />
	    <ul style="list-style-type: decimal;">
		    <li><a href="http://www.naver.com" id="naver" >네이버</a></li>
		    <li><a href="http://www.daum.net"  >다음</a></li>
		    <li><a href="http://www.nate.com"  >네이트</a></li>
	    </ul>
	    <h2>실습하기</h2>
	    <span>실습입니다</span>
	    <input type='button' value="텍스트변경하기"/>
	</fieldset>
</body>
</html>