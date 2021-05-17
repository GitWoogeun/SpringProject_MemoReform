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
          <!-- 탑 이동 -->
          <div class="to-top">
            <a href="#top" class="paper-btn margin">^</a>
          </div>
          <div class="section">
            <div class="row flex-center">
              <div class="card" style="width: 20rem;">
                <img src="/resources/upload/${request.photo}" alt="${request.photo}">
                <div class="card-body">
                  <h4 class="card-title">${request.sj}</h4>
                  <p class="card-text">${request.cn}</p>
                  <div class="row flex-center child-borders">
                    <a class="paper-btn margin" onclick="location.href='insertProposal?no=${request.no}'">제안서 쓰기</a>
                    <a class="paper-btn margin" onclick="location.href='myPage'">목록</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>