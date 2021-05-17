<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="border fixedNav split-nav">
<!-- <nav> = 네비게이션 역활을 해준다.
     요소는 문서의 부분 중 현재 페이지
     내, 또는 다른 페이지로의 링크를 보여주는 구획을 나타냅니다. 자주 쓰이는 예제는 메뉴, 목차, 색인-->
  <div class="nav-brand">
    <h3><a href="${pageContext.request.contextPath}/">메모리폼</a></h3>
  </div>
  <div class="collapsible">
    <input id="collapsible1" type="checkbox" name="collapsible1">
    <label for="collapsible1">
      <!--choose 태그 = 조건에 따른 여러곳으로 분기(나눔) 가능하고 조건이 맞은 것이 없을 경우
                       기분 분기를 제공할수 있다.  자바의 switch문과 비슷한 같은 느낌             -->
      <c:choose>
        <!--when = switch의 case와 같은 역활을 한다고 보면 된다. , eq = equals-->
        <c:when test="${sessionScope.result.email eq null}">
          <div class="bar1">회원등록</div>
          <div class="bar2">로그인</div>
        </c:when>
        <!--otherwise = default문 같은 역활을 한다.-->
        <c:otherwise>
          <div class="bar1">${sessionScope.result.nm} 고객님</div>
          <div class="bar1">로그아웃</div>
        </c:otherwise>
      </c:choose>
    </label>
    <div class="collapsible-body">
      <ul class="inline">
        <c:choose>
          <c:when test="${sessionScope.result.email eq null}">
            <li><a href="${pageContext.request.contextPath}/join">회원등록</a></li>
            <li><a href="${pageContext.request.contextPath}/login">로그인</a></li>
          </c:when>
          <c:otherwise>
            <li><a href="${pageContext.request.contextPath}/userPage">${sessionScope.result.nm}
              고객님</a></li>
            <li><a href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
          </c:otherwise>
        </c:choose>
      </ul>
    </div>
  </div>
</nav>