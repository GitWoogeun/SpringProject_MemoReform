<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <jsp:include page="../common/header.jsp"/>
  <body>
    <jsp:include page="../common/nav.jsp"/>
    <div class="paper">

      <div class="text-center">
        <h4>공지사항을 작성해주세요</h4>
      </div>

      <div class="row flex-spaces">
        <div class="col-6 col">
          <form action="insertNotice">
            <input type="hidden" name="writerNo" value="${sessionScope.result.no}">
            <div class="form-group">
              <label for="title">제목</label>
              <input class="input-block" type="text" placeholder="제목을 입력해주세요" id="title" name="sj">
            </div>
            <div class="form-group">
              <label for="content">내용</label>
              <textarea class="input-block" id="content" placeholder="내용을 입력해주세요"
                        name="cn"></textarea>
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