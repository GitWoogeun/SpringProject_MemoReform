<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <jsp:include page="../common/header.jsp"/>
  <body>
    <jsp:include page="../common/nav.jsp"/>
    <div id="top" class="row site">

      <div class="sm-12 col">
        <div class="paper">
          <div class="title">
            <div class="row flex-center">
              <div class="text-center">
                <h1>${sessionScope.loginSession.nm} 고객님</h1>
              </div>
            </div>
          </div>

          <div class="to-top">
            <a href="#top" class="paper-btn margin">^</a>
          </div>
          <div class="section">
            <div class="row flex-spaces tabs">
              <input id="tab1" type="radio" name="tabs" checked>
              <label for="tab1">받은 제안서</label>

              <input id="tab2" type="radio" name="tabs">
              <label for="tab2">보낸 의뢰서</label>

              <div class="content" id="content1">
                <table>
                  <thead>
                  <tr>
                    <th></th>
                    <th>의뢰서 번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>작성일</th>
                    <th>견적</th>
                    <th>현황</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${proposalList}" var="proposal">
                    <tr>
                      <td>${proposal.no}</td>
                      <td>${proposal.rqstdocNo}</td>
                      <td><a href="viewProposal?no=${proposal.no}&requestNo=${proposal.rqstdocNo}">${proposal.sj}</a></td>
                      <td>${proposal.expertNm}</td>
                      <td>${proposal.rgsde}</td>
                      <td>${proposal.estmt}</td>
                      <td>${proposal.sttus}</td>
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
                <div class="text-center margin">
                  <button onclick="location.href='insertRequest'">의뢰서 작성하기</button>
                </div>
              </div>
              <!-- 이용자 목록 -->
              <div class="content" id="content2">
                <table>
                  <thead>
                  <tr>
                    <th></th>
                    <th>제목</th>
                    <th>범주</th>
                    <th>작성일</th>
                    <th>진행상항</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${requestList}" var="request">
                    <tr>
                      <td>${request.no}</td>
                      <td><a href="viewRequest?no=${request.no}">${request.sj}</a></td>
                      <td>${request.ctgry}</td>
                      <td>${request.rgsde}</td>
                      <td>${request.sttus}</td>
                    </tr>
                  </c:forEach>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>