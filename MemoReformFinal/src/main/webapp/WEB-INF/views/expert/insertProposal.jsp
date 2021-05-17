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
                  <form action="insertProposalKing" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="rqstdocNo" value="${param.no}">
                    <input type="hidden" name="expertNo" value="${sessionScope.loginSession.no}">
                    <div class="form-group">
                      <label for="sj">제목</label>
                      <input type="text" class="input-block" name="sj" id="sj" required>
                    </div>
                    <div class="form-group">
                      <label for="cn">내용</label>
                      <textarea name="cn" id="cn" class="input-block no-resize" required></textarea>
                    </div>
                    <div class="form-group">
                      <label for="estmt">견적금액</label>
                      <input type="number" class="input-block" name="estmt" id="estmt" required>
                    </div>
                    <div class="row flex-center child-borders">
                      <button type="submit" class="paper-btn btn-primary btn-block">제안서 제출하기</button>
                    </div>
                  </form>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>