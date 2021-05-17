<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <!--페이지의 공통부분을 출력하기위해 jsp:include page="../common/header.jsp의 페이지의 부분을 가져온다."-->
  <jsp:include page="../common/header.jsp"/>
  <body>
    <jsp:include page="../common/nav.jsp"/>
    <div id="top" class="row site">
      <div class="sm-12 col">
        <div class="paper">
          <div class="text-center">
            <h4>QnA를 작성해주세요</h4>
          </div>

          <div class="row flex-spaces">
            <div class="sm-6 col">
              <form action="insertQnA">
                <div class="form-group">
                  <label for="title">제목</label>
                  <input class="input-block" type="text" placeholder="제목을 입력해주세요" id="title"
                         name="sj">
                </div>
                <div class="form-group">
                  <label for="content">내용</label>
                  <textarea class="input-block" id="content" name="cn"
                            placeholder="내용을 입력해주세요"></textarea>
                </div>
                <div class="form-group">
                  <button type="submit" class="btn-block btn-primary">글쓰기</button>
                </div>
              </form>
            </div>
          </div>
          <hr>
        </div>
  </body>
</html>