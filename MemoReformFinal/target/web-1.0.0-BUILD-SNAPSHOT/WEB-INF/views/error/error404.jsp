<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <jsp:include page="../common/header.jsp"/>
  <body>
    <div id="top" class="row site">
      <div class="sm-12 col">
        <div class="paper">
          <%-- 상단 제목 --%>
          <div class="title">
            <div class="row flex-center">
              <div class="text-center">
                <!--404에러는 파일을 찾을수없을때 발생하는 에러
                    보통 이때 파일을 찾을수 없는 경우에 제일 유력한게
                    경로가 틀려서 찾지 못하는 경우가 많다. -->
                <h1>404</h1>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>