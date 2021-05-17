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
                <h1>로그인</h1>
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
                <form action="loginMember" method="post">
                  <div class="form-group">
                    <label for="email">이메일</label>
                    <input class="input-block" type="email" placeholder="example@memoreform.com"
                           id="email" name="email">
                  </div>
                  <div class="form-group">
                    <label for="password">비밀번호</label>
                    <input class="input-block" type="password" placeholder="비밀번호를 입력해주세요."
                           id="password" name="password">
                  </div>
                  <div class="form-group">
                    <button type="submit" class="btn-block btn-primary">로그인</button>
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