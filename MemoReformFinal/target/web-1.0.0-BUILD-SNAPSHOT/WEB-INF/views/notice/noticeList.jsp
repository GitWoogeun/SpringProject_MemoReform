<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <jsp:include page="../common/header.jsp"/>
  <body>
    <jsp:include page="../common/nav.jsp"/>
    <div id="top" class="row site">
      <div class="sm-12 col">
        <div class="paper">
          <%-- 상단 제목 --%>
          <div class="title">
            <div class="row flex-edges">
              <div class="text-center">
                <h1>공지사항</h1>
              </div>
            </div>
          </div>
          <!-- 탑 이동 -->
          <div class="to-top">
            <a href="#top" class="paper-btn margin">^</a>
          </div>
          <div class="section">

            <table>
              <thead>
                <tr>
                  <th></th>
                  <th>제목</th>
                  <th>작성자</th>
                  <th>작성일</th>
                  <th>조회</th>
                </tr>
              </thead>
              <tbody>
                <c:forEach items="${noticeList}" var="notice">
                  <tr>
                    <td>${notice.no}</td>
                    <td><a href="noticeDetail?no=${notice.no}">${notice.sj}</a></td>
                    <td>관리자</td>
                    <td>${notice.rgsde}</td>
                    <td>${notice.co}</td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
            <c:if test="${sessionScope.loginSession.ty eq 'A'}">
              <button onclick="location.href='noticeForm'">글쓰기</button>
            </c:if>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>