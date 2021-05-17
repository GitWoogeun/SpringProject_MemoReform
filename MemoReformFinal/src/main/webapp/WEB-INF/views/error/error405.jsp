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
                <!-- 405오류는 메소드의 매칭이 되지 않아 생기는 오류일 가능성이 크다
                     Form태그에서 전송하는 메소드 방식과 Controller에서 RequestMapping 요청하는
                     방식이 달라서 일수도 있다 예를 들어 form에서는 get방식을 controller에서는 post
                     둘의 메소드 방식을 같은 방식으로 해주면 오류가 해결이 된다.-->
                <h1>405</h1>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>