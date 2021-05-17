<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="border split-nav">
  <div class="nav-brand">
    <h3><a href="${pageContext.request.contextPath}/">메모리폼</a></h3>
  </div>

  <div class="collapsible">
    <input id="collapsible1" type="checkbox" name="collapsible1">
    <label for="collapsible1">
      <div class="bar1">공지사항</div>
      <div class="bar2">QnA</div>
      <c:choose>
        <c:when test="${sessionScope.loginSession.email eq null}">
          <div class="bar3">회원등록</div>
          <div class="bar4">로그인</div>
        </c:when>
        <c:otherwise>
          <div class="bar3">${sessionScope.loginSession.nm} 님</div>
          <div class="bar4">로그아웃</div>
        </c:otherwise>
      </c:choose>
    </label>
    <div class="collapsible-body">
      <ul class="inline">
        <li><a href="${pageContext.request.contextPath}/notice/noticeList">공지사항</a></li>
        <li><a href="${pageContext.request.contextPath}/qna/qnaList">QnA</a></li>
        <c:choose>
          <c:when test="${sessionScope.loginSession.email eq null}">
            <li><a href="${pageContext.request.contextPath}/member/joinForm">회원등록</a></li>
            <li><a href="${pageContext.request.contextPath}/member/loginForm">로그인</a></li>
          </c:when>
          <c:otherwise>
            <li>
              <a href="${pageContext.request.contextPath}/user/myPage">${sessionScope.loginSession.nm}님</a>
            </li>
            <li><a href="${pageContext.request.contextPath}/member/logoutMember">로그아웃</a></li>
          </c:otherwise>
        </c:choose>
      </ul>
    </div>
  </div>
</nav>