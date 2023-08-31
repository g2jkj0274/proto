<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="pageTitle" value="축제 정보 " />
<%@ include file="../common/head.jspf"%>

<style>
* {
	margin: 0;
	padding: 0;
}

ul, li {
	list-style: none;
}

a {
	color: inherit;
	text-decoration: none;
}

/*  스타일 */

/*  리스트 */
h1 {
	margin-top: 30px;
	text-align: center;
}

/* list  */
.search-box {
	width: 1080px;
	margin: 0 auto;
	display: flex;
	justify-content: end;
}

.search-box>select {
	margin-top: 50px;
	margin-right: 10px;
	height: 35px;
}

.search-box>input {
	width: 300px;
	height: 30px;
	margin-top: 50px;
	margin-right: 10px;
}

.search-box>button {
	margin-top: 50px;
	margin-right: 10px;
	height: 35px;
	width: 50px;
}

table, th, td {
	border-bottom: 1px solid black;
	border-top: 1px solid black;
	height: 50px;
}

.table-box {
	width: 1080px;
	margin: 0 auto;
	margin-top: 30px;
	text-align: center;
	border-collapse: separate;
	border-spacing: 0;
}

table th {
	background-color: #ddd;
}
</style>

<div>
  <h1>리스트</h1>

  <!-- 검색박스 -->
  <form action="" class="search-box">
    <select name="검색조건" id="">
      <option value="" selected>검색조건</option>
      <option value="">제목</option>
      <option value="">내용</option>
      <option value="">제목,내용</option>

    </select>
    <input type="text">
    <button>검색</button>
  </form>

  <!-- 리스트 -->
  <table class="table-box">
    <colgroup>
      <col width="10%">
      <col width="15%">
      <col width="15%">
      <col width="10%">
      <col width="50%">
    </colgroup>
    <tr class="head-box">
      <th class="id-box">번호</th>
      <th>작성날짜</th>
      <th>수정날짜</th>
      <th>작성자</th>
      <th>제목</th>
    </tr>
    <c:forEach var="festival" items="${festivals}">
      <tr class="body-box">
        <td>${festival.id}</td>
        <td>${festival.regDate}</td>
        <td>${festival.updateDate}</td>
        <td>${festival.extra_writerName}</td>
        <td>
          <a href="#">${festival.title}</a>
        </td>
      </tr>
    </c:forEach>
  </table>
</div>

<%@ include file="../common/foot.jspf"%> --%>