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
                <h1>QnA</h1>
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
                <c:forEach items="${qnaList}" var="qna">
                  <tr>
                    <td>${qna.no}</td>
                    <td><a href="qnaDetail?no=${qna.no}">${qna.sj}</a></td>
                    <td>${qna.nm}</td>
                    <td>${qna.rgsde}</td>
                    <td>${qna.co}</td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
            <c:if test="${sessionScope.loginSession ne null}">
              <button onclick="location.href='qnaForm'">글쓰기</button>
            </c:if>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>