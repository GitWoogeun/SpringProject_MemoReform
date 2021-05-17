<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <jsp:include page="common/header.jsp"/>
  <body>
    <jsp:include page="common/nav.jsp"/>
    <div id="top" class="row site">
      <div class="sm-12 col">
        <div class="paper">
          <%-- 상단 제목 --%>
          <div class="title">
            <div class="row flex-center">
              <div class="text-center">
                <h1>메모리폼</h1>
                <h3>리폼의 전문가를 찾아드려요</h3>
              </div>
            </div>
          </div>
          <%-- 상단 목록 --%>
          <div class="row flex-spaces">
            <div class="card" style="width: 15rem;">
              <img src="/resources/imgs/clothing.jpg" alt="Clothing">
              <div class="card-body">
                <h4 class="card-title text-center">의류</h4>
              </div>
            </div>
            <div class="card" style="width: 15rem;">
              <img src="/resources/imgs/furniture.jpg" alt="Furniture">
              <div class="card-body">
                <h4 class="card-title text-center">가구</h4>
              </div>
            </div>
            <div class="card" style="width: 15rem;">
              <img src="/resources/imgs/leather.jpg" alt="Leather">
              <div class="card-body">
                <h4 class="card-title text-center">가죽</h4>
              </div>
            </div>
            <div class="card" style="width: 15rem;">
              <img src="/resources/imgs/appliances.jpg" alt="Appliances">
              <div class="card-body">
                <h4 class="card-title text-center">가전</h4>
              </div>
            </div>

          </div>
          <!-- 탑 이동 -->
          <div class="to-top">
            <a href="#top" class="paper-btn margin">^</a>
          </div>
          <!-- 내용 -->
          <div class="section">

          </div>
        </div>
      </div>
    </div>
  </body>
</html>