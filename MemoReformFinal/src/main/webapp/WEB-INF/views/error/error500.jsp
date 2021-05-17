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
                <!--HTTP Status 500 error는 root cause에서 발생하는 오류이다.
                    해결 방법은 아래와 같다
                    해결 : 서비스 메소드 부분에 @Service를 참조하는 객체 부분에
                    @Autowired를 붙여주면 해결가능 -->
                <h1>500</h1>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>