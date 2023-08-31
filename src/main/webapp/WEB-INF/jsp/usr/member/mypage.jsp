<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="pageTitle" value="마이페이지" />
<%@ include file="../common/head.jspf"%>

<style>
.container {
	margin: 200px;
}
</style>

<script>
	
</script>

<section class="mt-5">
  <div class="container mx-auto px-3">
    <div class="table-box-type-1">
      <table>
        <colgroup>
          <col width="200" />
        </colgroup>
        <tbody>
          <tr>
            <th>아이디</th>
            <td>${member.loginId}</td>
          </tr>
          <tr>
            <th>이름</th>
            <td>${member.name}</td>
          </tr>
          <tr>
            <th>닉네임</th>
            <td>${member.nickname}</td>
          </tr>
          <tr>
            <th>전화번호</th>
            <td>${member.cellphoneNo}</td>
          </tr>
          <tr>
            <th>이메일</th>
            <td>${member.email}</td>
          </tr>
        </tbody>
      </table>
    </div>
    <table>
      <tbody>
        <tr>
          <td>
            <button type="button" class="btn btn-outline btn-primary" onclick="history.back();">뒤로가기</button>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
</section>

<%@ include file="../common/foot.jspf"%>