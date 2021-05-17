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
                  <form action="updateNotice">
                    <input type="hidden" name="no" value="${param.no}">
                    <input type="text" class="input-block" name="sj" value="${notice.sj}">
                    <textarea name="cn" class="input-block">${notice.cn}</textarea>
                    <div class="row flex-center child-borders">
                      <button type="submit">등록</button>
                    </div>
                  </form>
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