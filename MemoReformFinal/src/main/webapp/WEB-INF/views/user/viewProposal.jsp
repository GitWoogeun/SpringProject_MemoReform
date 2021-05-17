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
                <div class="card-body">
                  <h4 class="card-title">${proposal.sj}</h4>
                  <p class="card-text">${proposal.cn}</p>
                  <p class="card-text">${proposal.estmt}</p>
                  <div class="row flex-center child-borders">
                    <a class="paper-btn margin" onclick="location.href='choiceProposal?no=${proposal.no}&requestNo=${param.requestNo}&expertNo=${proposal.expertNo}&estmt=${proposal.estmt}'">
                      제안서 선택</a>
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