<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <jsp:include page="../common/header.jsp"/>
  <body>
    <jsp:include page="../common/nav.jsp"/>
    <div id="top" class="row site">

      <div class="sm-12 md-4 col sidebar">

        <div class="paper">
          <h3 class="sidebar-title" style="text-align:center">메모리폼</h3>
          <div class="row">
            <div class="collapsible full-width">
              <input id="collapsible-components" type="radio" name="collapsible">
              <label for="collapsible-components">현황</label>
              <div class="collapsible-body">
                <ul>
                  <li>
                    <a href="/admin/adminMain">현황</a>
                  </li>
                </ul>
              </div>
            </div>

            <div class="collapsible full-width">
              <input id="collapsible-content" type="radio" name="collapsible">
              <label for="collapsible-content">회원</label>
              <div class="collapsible-body">
                <ul>
                  <li>
                    <a href="/admin/adminUser">이용자</a>
                  </li>
                  <li>
                    <a href="/admin/adminExpert">전문가</a>
                  </li>
                </ul>
              </div>
            </div>

            <div class="collapsible full-width">
              <input id="collapsible-layout" type="radio" name="collapsible">
              <label for="collapsible-layout">문서</label>
              <div class="collapsible-body">
                <ul>
                  <li>
                    <a href="/admin/adminRequest">의뢰서</a>
                  </li>
                  <li>
                    <a href="/admin/adminProposal">제안서</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>

      </div>
      <div class="sm-12 md-8 col">
        <div class="paper">

          <div class="title">
            <div class="row flex-center">
              <div class="text-center">
                <h1>전문가</h1>
              </div>
            </div>
          </div>

          <div class="to-top">
            <a href="#top" class="paper-btn margin">^</a>
          </div>
          <div class="section">
            <!-- 전문가 목록 -->
            <table>
              <thead>
              <tr>
                <th>회원번호</th>
                <th>이름</th>
                <th>이메일</th>
                <th>비밀번호</th>
                <th>분야</th>
                <th>등록일</th>
              </tr>
              </thead>
              <tbody>
              <c:forEach items="${expertList}" var="expert">
                <tr>
                  <td>${expert.no}</td>
                  <td>${expert.nm}</td>
                  <td>${expert.email}</td>
                  <td>${expert.password}</td>
                  <td>${expert.expertCtgry}</td>
                  <td>${expert.rgsde}</td>
                </tr>
              </c:forEach>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>