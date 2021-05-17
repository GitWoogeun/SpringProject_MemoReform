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
                  <form action="insertRequestKing" method="post" enctype="multipart/form-data">
                    <fieldset class="form-group">
                      <div class="row flex-spaces">
                        <label for="clothing" class="paper-radio">
                          <input type="radio" name="ctgry" id="clothing" value="의류" required>
                          <span>의류</span>
                        </label>
                        <label for="furniture" class="paper-radio">
                          <input type="radio" name="ctgry" id="furniture" value="가구">
                          <span>가구</span>
                        </label>
                        <label for="leather" class="paper-radio">
                          <input type="radio" name="ctgry" id="leather" value="가죽">
                          <span>가죽</span>
                        </label>
                        <label for="appliances" class="paper-radio">
                          <input type="radio" name="ctgry" id="appliances" value="가전">
                          <span>가전</span>
                        </label>
                      </div>
                    </fieldset>
                    <div class="form-group">
                      <label for="sj">제목</label>
                      <input type="text" class="input-block" name="sj" id="sj" required>
                    </div>
                    <div class="form-group">
                      <label for="cn">내용</label>
                      <textarea name="cn" id="cn" class="input-block no-resize" required></textarea>
                    </div>
                    <div class="form-group">
                      <label for="photo">사진</label>
                      <input type="file" id="photo" class="input-block" name="file" required>
                    </div>
                    <div class="row flex-center child-borders">
                      <button type="submit" class="paper-btn btn-primary btn-block">등록하기</button>
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