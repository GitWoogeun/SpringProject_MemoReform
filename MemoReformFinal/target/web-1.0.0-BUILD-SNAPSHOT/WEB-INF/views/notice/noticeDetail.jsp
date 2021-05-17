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
                <img src="https://picsum.photos/768" alt="Card example image">
                <div class="card-body">
                  <h4 class="card-title">${notice.sj}</h4>
                  <h5 class="card-subtitle text-muted">관리자</h5>
                  <h5 class="card-subtitle text-muted">${notice.rgsde} 조회 ${notice.co}</h5>
                  <p class="card-text">${notice.cn}</p>
                  <div class="row flex-center child-borders">
                    <a class="paper-btn margin"
                       onclick="location.href='noticeUpdate?no=${param.no}'">수정</a>
                    <a class="paper-btn margin" onclick="check()">삭제</a>
                    <a class="paper-btn margin" onclick="location.href='noticeList'">목록</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script>
      function check() {
        const cf = confirm('게시글을 삭제하시겠습니까?')
        if (cf) {
          location.href = 'deleteNotice?no=${param.no}'
        }
      }
    </script>
  </body>
</html>