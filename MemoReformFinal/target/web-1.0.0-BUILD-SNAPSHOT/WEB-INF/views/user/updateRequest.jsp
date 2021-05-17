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
                <img src="/resources/update/${request.photo}" alt="${request.photo}">
                <div class="card-body">
                  <form action="updateRequestKing">
                    <input type="hidden" name="no" value="${request.no}">
                    <div class="form-group">
                      <label for="sj">제목</label>
                      <input type="text" class="input-block" name="sj" id="sj" value="${request.sj}" required>
                    </div>
                    <div class="form-group">
                      <label for="cn">내용</label>
                      <textarea name="cn" id="cn" class="input-block no-resize" required>${request.cn}</textarea>
                    </div>
                    <div class="form-group">
                      <label for="photo">사진</label>
                        <input type="file" class="input-block" name="file" id="photo" value="${request.photo}" required>
                    </div>
                    <div class="row flex-center child-borders">
                      <button type="submit" class="paper-btn btn-primary btn-block">수정하기</button>
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