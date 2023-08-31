<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="pageTitle" value="메인 " />
<%@ include file="../common/head.jspf"%>

<style>
/* 노멀라이징 */
body, ul, li {
	margin: 0;
	padding: 0;
	list-style: none;
}

/* 공통 스타일 */
a {
	color: inherit;
	text-decoration: none;
}

/* 슬라이드 이미지 */
.slider {
	width: 100%;
	height: 300px;
	overflow: hidden;
	position: relative;
    margin-top: 300px;
}

.slide {
	display: none;
	position: absolute; /* 슬라이드들이 겹치게 배치 */
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}

.slide img {
	width: 100%;
	height: 100%;
	object-fit: contain; /* 이미지 원본 비율 유지하면서 100% 채우기 */
}

/* 슬라이더 버튼 */
.prev-slide-btn, .next-slide-btn {
	position: absolute;
	top: 50%;
	transform: translateY(-50%);
	background-color: rgba(0, 0, 0, 0.5);
	color: white;
	padding: 100% 10px;
	border: none;
	cursor: pointer;
}

.prev-slide-btn {
	left: 0;
}

.next-slide-btn {
	right: 0;
}
</style>

<script>
	$(document).ready(function() {
		var slides = $(".slide");
		var currentSlide = 0;

		function showSlide(index) {
			slides.fadeOut();
			slides.eq(index).fadeIn();
		}

		function nextSlide() {
			currentSlide = (currentSlide + 1) % slides.length;
			showSlide(currentSlide);
		}

		function prevSlide() {
			currentSlide = (currentSlide - 1 + slides.length) % slides.length;
			showSlide(currentSlide);
		}

		showSlide(currentSlide);

		$(".next-slide-btn").click(nextSlide);
		$(".prev-slide-btn").click(prevSlide);

		setInterval(nextSlide, 3000);
	});
</script>

<div class="slider">
  <button class="prev-slide-btn">이전</button>
  <div class="slide">
    <img src="https://blog.kakaocdn.net/dn/kHnnj/btrdr4aIp66/KpBSWcyZDYMbX0jkTkfUrK/img.gif" alt="">
  </div>
  <div class="slide">
    <img src="https://i.pinimg.com/originals/b9/eb/a5/b9eba5306de2feed9e07bc47f7449483.gif" alt="">
  </div>
  <button class="next-slide-btn">다음</button>
</div>

<%@ include file="../common/foot.jspf"%>