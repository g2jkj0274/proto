<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="pageTitle" value="축제 정보 " />
<%@ include file="../common/head.jspf"%>

<style>
.mt-5 {
	margin: 100px auto 0;
}
</style>

<div>
  <section class="mt-5">
    <div class="container mx-auto px-3">
      <div class="flex">
        <div>
          <!-- 추가적인 검색 옵션 및 정보 표시를 작성하세요 -->
        </div>
      </div>

      <div class="mt-3">
        <table class="table table-fixed w-full">
          <colgroup>
            <!-- 각 열의 너비 조정을 작성하세요 -->
          </colgroup>
          <thead>
            <tr>
              <th>이미지</th>
              <th>번호</th>
              <th>시작날짜</th>
              <th>종료날짜</th>
              <th>장소</th>
              <th>제목</th>
              <th>내용</th>
              <!-- 이미지 열 추가 -->
              <!-- 필요한 열을 추가하세요 -->
            </tr>
          </thead>

          <tbody>
            <c:forEach var="festival" items="${festivals}">
              <tr class="hover">
                <td>
                  <img src="${festival.picture}" alt="축제 이미지" width="100" height="100">
                </td>
                <td>${festival.id}</td>
                <td>${festival.startDate}</td>
                <td>${festival.endDate}</td>
                <td>${festival.address}</td>
                <td>
                  <a class="btn-text-link block w-full truncate" href="../festival/detail?id=${festival.id}">${festival.title}</a>
                </td>
                <td>
                  <a class="btn-text-link block w-full truncate" href="../festival/detail?id=${festival.id}">${festival.body}</a>
                </td>
                <!-- 이미지 표시 -->
                <!-- 필요한 열의 데이터를 출력하세요 -->
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>

      <!-- 페이지 메뉴 등 추가적인 내용을 작성하세요 -->

    </div>
  </section>
</div>

<%@ include file="../common/foot.jspf"%>