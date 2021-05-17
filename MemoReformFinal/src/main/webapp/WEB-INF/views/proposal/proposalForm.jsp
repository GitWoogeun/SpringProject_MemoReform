<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <jsp:include page="../common/header.jsp"/>
  <body>
    <!-- 네비게이션 바 -->
    <jsp:include page="../common/nav.jsp"/>
    <div id="top" class="row site">
      <div class="sm-12 col">
        <div class="paper">
          <%-- 상단 제목 --%>
          <div class="title">
            <div class="row flex-center">
              <div class="text-center">
                <h1>제안서 작성</h1>
              </div>
            </div>
          </div>

          <!-- 탑 이동 -->
          <div class="to-top">
            <a href="#top" class="paper-btn margin">^</a>
          </div>

          <div class="section">


            <div class="row flex-spaces">
              <div class="sm-6 col">
                <form action="insertProposal" method="post" enctype="multipart/form-data">
                  <div class="form-group">
                    <label for="title">제목</label>
                    <input class="input-block" type="text" placeholder="제목을 입력해주세요." id="title"
                           name="sj" required>
                  </div>
                  <div class="form-group">
                    <div class="form-group">
                      <label for="content">내용</label>
                      <textarea class="no-resize input-block" id="content"
                                placeholder="내용을 입력해주세요." name="cn" required></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn-block btn-primary">
                      제안서 작성하기
                    </button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>