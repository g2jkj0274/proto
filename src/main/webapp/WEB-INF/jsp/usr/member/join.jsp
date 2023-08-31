<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="pageTitle" value="회원가입" />
<%@ include file="../common/head.jspf"%>

<style>
/* 노멀라이징 */
* {
	margin: 0;
	padding: 0;
}

a {
	color: inherit;
	text-decoration: none;
}

ul, li {
	list-style: none;
}

/* 라이브러리 */
.cell {
	float: left;
}

.cell-r {
	float: right;
}

.row::after {
	content: "";
	clear: both;
	display: block;
}

/* 스타일 */
/* 배너 메뉴 툴 */
.wrap-box {
	width: 1920px;
	margin: 0 auto;
	position: relative;
}

.wrap-box>.menu-banner-box {
	width: 100%;
}

/* 상단 bar */
.wrap-box>.menu-banner-box>.top-bar-box {
	width: 1920px;
	height: 80px;
	background-color: #fff;
	margin: 0 auto;
	display: flex;
	position: relative;
	position: fixed;
	top: 0;
	left: 0;
	right: 0;
	box-shadow: 0px 0px 10px 0px rgba(51, 51, 51, 0.2);
	z-index: 3;
}

/* login, logo 정렬 */
.wrap-box>.menu-banner-box>.top-bar-box>.logo-box, .wrap-box>.menu-banner-box>.top-bar-box>.login-box
	{
	flex-grow: 1;
}

/* 로고  */
.wrap-box>.menu-banner-box>.top-bar-box>.logo-box>li svg {
	margin-left: 30px;
}

/* login  */
.wrap-box>.menu-banner-box>.top-bar-box>.login-box {
	display: flex;
	font-size: 30px;
	align-items: center;
	justify-content: flex-end;
	position: relative;
}

.wrap-box>.menu-banner-box>.top-bar-box>.login-box div>.se-icon {
	position: absolute;
	top: 30px;
	right: 100px;
}

.wrap-box>.menu-banner-box>.top-bar-box>.login-box div>input {
	width: 300px;
	height: 50px;
	border: none;
	border-bottom: 1px solid;
}

.wrap-box>.menu-banner-box>.top-bar-box>.login-box>li {
	margin: 0 20px;
}

/*  메뉴 커스텀 (1차메뉴) */
.wrap-box>.menu-banner-box>.top-bar-box>.menu-box {
	flex-grow: 5;
	display: flex;
	justify-content: space-between;
}

.wrap-box>.menu-banner-box>.top-bar-box>.menu-box>li {
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	font-size: 20px;
	font-weight: bold;
	color: #333333;
}

/* 2차 메뉴*/
.wrap-box>.menu-banner-box>.top-bar-box>.menu-box>li>.nav-2-menu {
	position: absolute;
	left: 0;
	width: 100%;
	top: 100%;
	background-color: #f1f1f1;
	transition: 1s;
	height: 0;
	overflow: hidden;
}

.wrap-box>.menu-banner-box>.top-bar-box>.menu-box ul {
	margin-right: 10%;
	text-align: center;
	padding: 10px 0;
}

.wrap-box>.menu-banner-box>.top-bar-box>.menu-box ul>li {
	padding: 20px 0;
}

.wrap-box>.menu-banner-box>.top-bar-box>.menu-box>li:hover .nav-2-menu {
	height: 220px;
}
/* 상단바 끝 */

/* 회원가입  */
/* 글자 */
h1 {
	margin-top: 100px;
	text-align: center;
}

/* 회원가입 */
input, textarea {
	outline: none;
}

input:focus {
	border: 2px solid purple;
}

.form-box {
	width: 450px;
	margin: 0 auto;
}

form>.form-box>.id-box {
	margin-top: 30px;
	width: 100%;
	height: 50px;
	padding: 20px;
	box-sizing: border-box;
	margin-bottom: 10px;
	box-shadow: 0 2px 6px 0 rgba(68, 68, 68, 0.08);
	border: 1px solid #dadada;
	border-radius: 10px;
}

form>.form-box>.pass-box {
	width: 100%;
	height: 50px;
	padding: 20px;
	box-sizing: border-box;
	margin-bottom: 10px;
	box-shadow: 0 2px 6px 0 rgba(68, 68, 68, 0.08);
	border: 1px solid #dadada;
	border-radius: 10px;
}

form>.form-box>.name-box {
	width: 100%;
	height: 50px;
	padding: 20px;
	box-sizing: border-box;
	margin-bottom: 10px;
	box-shadow: 0 2px 6px 0 rgba(68, 68, 68, 0.08);
	border: 1px solid #dadada;
	border-radius: 10px;
}

form>.form-box>.phone-box {
	width: 49%;
	height: 50px;
	padding: 20px;
	box-sizing: border-box;
	margin-bottom: 10px;
	box-shadow: 0 2px 6px 0 rgba(68, 68, 68, 0.08);
	border: 1px solid #dadada;
	border-radius: 10px;
}

form>.form-box>.niname-box {
	width: 100%;
	height: 50px;
	padding: 20px;
	box-sizing: border-box;
	margin-bottom: 10px;
	box-shadow: 0 2px 6px 0 rgba(68, 68, 68, 0.08);
	border: 1px solid #dadada;
	border-radius: 10px;
}

form>.form-box>.bir-box {
	width: 100%;
	height: 50px;
	padding: 20px;
	box-sizing: border-box;
	margin-bottom: 10px;
	box-shadow: 0 2px 6px 0 rgba(68, 68, 68, 0.08);
	border: 1px solid #dadada;
	border-radius: 10px;
}

form>.form-box>.content-box {
	width: 100%;
	height: 200px;
	box-sizing: border-box;
	resize: none;
	padding: 20px;
	box-shadow: 0 2px 6px 0 rgba(68, 68, 68, 0.08);
	border: 1px solid #dadada;
	border-radius: 10px;
}

form>.form-box>select {
	width: 100%;
	height: 50px;
	padding: 10px;
	box-sizing: border-box;
	margin-bottom: 10px;
	box-shadow: 0 2px 6px 0 rgba(68, 68, 68, 0.08);
	border: 1px solid #dadada;
	border-radius: 10px;
}

form>.form-box>.phone-box {
	width: 100%;
	height: 50px;
	padding: 20px;
	box-sizing: border-box;
	margin-bottom: 10px;
	box-shadow: 0 2px 6px 0 rgba(68, 68, 68, 0.08);
	border: 1px solid #dadada;
	border-radius: 10px;
}

form>.form-box>.insig-box {
	width: 100%;
	height: 50px;
	padding: 20px;
	box-sizing: border-box;
	margin-bottom: 10px;
	margin-top: 10px;
	box-shadow: 0 2px 6px 0 rgba(68, 68, 68, 0.08);
	border: 1px solid #dadada;
	border-radius: 10px;
}

form>.form-box>.text {
	margin-bottom: 10px;
	margin-top: 10px;
}

form>.form-box>.submit {
	width: 100%;
	height: 50px;
	border: 2px solid purple;
	box-shadow: 0 2px 6px 0 rgba(68, 68, 68, 0.08);
	border: 1px solid #dadada;
	border-radius: 10px;
}

.submit:hover {
	background-color: purple;
	color: white;
}
</style>

<!-- 인증번호 요청 스크립트 -->
<script>
	function generateVerificationCode() {
		const codeLength = 6;
		const min = Math.pow(10, codeLength - 1);
		const max = Math.pow(10, codeLength) - 1;
		const randomCode = Math.floor(Math.random() * (max - min + 1)) + min;

		return randomCode.toString().padStart(codeLength, '0');
	}

	$(document).ready(function() {
		$('#requestCodeBtn').click(function() {
			const verificationCode = generateVerificationCode();
			$('#verificationCode').text('인증번호: ' + verificationCode);
		});
	});
	
	/* 인증번호 요청 버튼 클릭시 새로고침 현상 막기 */
	$(document).ready(function() {
        $('#requestCodeBtn').click(function(event) {
            event.preventDefault(); // 기본 동작 막기
            
            const verificationCode = generateVerificationCode();
            $('#verificationCode').text('인증번호: ' + verificationCode);
        });
    });
</script>

<section class="mt-5">
  <h1>회원가입</h1>
  <!-- 회원가입 -->
  <form action="">
    <div class="form-box">
      <input class="id-box" type="text" placeholder="아이디를 입력하세요">
      <input class="pass-box" type="password" placeholder="비밀번호를 입력하세요">
      <input class="pass-box" type="password" placeholder="비밀번호를 다시 입력하세요">
      <input class="name-box" type="text" placeholder="이름를 입력하세요">
      <input class="niname-box" type="password" placeholder="닉네임를 입력하세요">
      <input class="bir-box" type="password" placeholder="생년월일를 입력하세요">
      <select name="" id="통신사">

        <option value="" selected>통신사 선택</option>
        <option value="">KT</option>
        <option value="">LGU+</option>
        <option value="">SKT</option>
      </select>
      <input class="phone-box" type="text" placeholder="전화번호">
      <button id="requestCodeBtn" class="submit">인증번호 요청</button>
      <p id="verificationCode" class="text"></p>
      <input class="insig-box" type="text" placeholder="인증번호를 입력하세요">
      <button class="submit">인증확인</button>
      <p class="text">
        <input class="agree-box" type="checkbox">
        개인정보 수집 및 이용 내용을 확인하였으며, 동의합니다.
      </p>
      <button class="submit">회원가입하기</button>
    </div>
</section>

<%@ include file="../common/foot.jspf"%>