<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="pageTitle" value="지도 " />
<%@ include file="../common/head.jspf"%>

<div id="map" style="width: 500px; height: 400px;"></div>

<!-- 카카오 지도 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f2e8b8dfe2eeda94b06ca3878c8af6cf"></script>

<script>
	// 지도 생성
	var container = document.getElementById('map');
	var options = {
		center : new kakao.maps.LatLng(37.5665, 126.9780), // 지도 중심 좌표
		level : 3
	// 줌 레벨
	};
	var map = new kakao.maps.Map(container, options);
</script>

<%@ include file="../common/foot.jspf"%>