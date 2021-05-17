<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!--tag의 라이브러리를 불러올수있게 하기 위해서 선언된 JSP이다. prefix="c" = 단축어입니다.-->
<!--공통 JSP와 같은 common.jsp에 커스텀 액션을 사용하겠다. 라는 정의를 선언해준다.-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
    <!--모바일 반응형-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!--외부의 css를 가져오기 위해서 선언한 link태그이다.-->
    <link rel="stylesheet" href="https://unpkg.com/papercss@1.8.2/dist/paper.min.css">
    <link rel="stylesheet" href="../../../resources/css/style.css"/>
    <title>메모리폼</title>
    <!--google charts 사용하기 위한 script-->
    <script src="https://www.gstatic.com/charts/loader.js"></script>

    <!--구글차트 스크립트-->
    <script>
      google.charts.load('current', {'packages': ['bar']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {
        //google 차트를 출력하기위해서 객체 생성해서 데이터 짚어 넣고 뿌리기
        // data1 = 구글차트 객체에다가 ['월','이용자','전문가','의뢰서','제안서'],의 차트 데이터를 짚어넣음
        const data1 = google.visualization.arrayToDataTable([
          ['월', '이용자', '전문가', '의뢰서', '제안서'],
            <!--범위 안에서 반복문을 수행한다. for문과 동일한 역활을 한다.-->
            <!-- item      = "$ {리스트를 받아올 배열 이름}"
                 var       = "for문 내부에서 사용할 변수"
                 varstatus = "상태용 변수"
                 varStatus = "status" => varStatus의 모든 속성을 사용할수있게
                 userCount배열 리스트 안에 값을 user라는 변수로 가져온다.-->
          <c:forEach items="${userCount}" var="user" varStatus="status">
          ['${user.month}', ${user.userCount}, ${expertCount[status.index].expertCount},
            ${requestCount[status.index].rqstdocCount}, ${proposalCount[status.index].prpslCount}],
          </c:forEach>
        ])

        //data2 변수에는 월 , 매출액을 구글차트로 출력하기 위해서 사용
        const data2 = google.visualization.arrayToDataTable([
          ['월', '매출액'],
          <c:forEach items="${dealingCount}" var="dealing">
          ['${dealing.month}', ${dealing.estmt}],
          </c:forEach>
        ])

        //현재 메모리폼 사이트의 현황을 데이터화해서 차트를 출력 해줌
        const options1 = {
          chart: {
            title: '메모리폼 현황'
            // subtitle: 'Sales, Expenses, and Profit: 2014-2017',
          }
        }

        //현재 메모리품의 사이트의 매출을 데이터화해서 차트로 출력해줌
        const options2 = {
          chart: {
            title: '메모리폼 매출액'
            // subtitle: 'Sales, Expenses, and Profit: 2014-2017',
          }
        }

        //id값이 chart1 div를 구글 차트 bar형식으로 객체를 생성
        const chart1 = new google.charts.Bar(document.getElementById('chart1'))
        const chart2 = new google.charts.Bar(document.getElementById('chart2'))

        //차트1 객체에 밑에 데이터들을 bar차트로 그려준다.
        chart1.draw(data1, google.charts.Bar.convertOptions(options1))
        chart2.draw(data2, google.charts.Bar.convertOptions(options2))
      }
    </script>
  </head>
  <body>
    <jsp:include page="../common/nav.jsp"/>
    <div id="top" class="row site">

      <div class="sm-12 md-4 col sidebar">

        <div class="paper">
          <h3 class="sidebar-title" style="text-align:center">
            메모리폼
          </h3>
          <div class="row">
            <div class="collapsible full-width">
              <input id="collapsible-components" type="radio" name="collapsible">
              <label for="collapsible-components">현황</label>
              <div class="collapsible-body">
                <ul>
                  <li>
                    <!--현황 페이지로 이동-->
                    <a href="/admin/adminMain">현황</a>
                  </li>
                </ul>
              </div>
            </div>

            <div class="collapsible full-width">
              <input id="collapsible-content" type="radio" name="collapsible">
              <label for="collapsible-content">회원</label>
              <div class="collapsible-body">
                <ul>
                  <li>
                    <!--이용자 페이지로 이동-->
                    <a href="/admin/adminUser">이용자</a>
                  </li>
                  <li>
                    <!--전문가 페이지로 이동-->
                    <a href="/admin/adminExpert">전문가</a>
                  </li>
                </ul>
              </div>
            </div>

            <div class="collapsible full-width">
              <!--id = 프론트 , name = 서버에서 -->
              <input id="collapsible-layout" type="radio" name="collapsible">
              <label for="collapsible-layout">문서</label>
              <div class="collapsible-body">
                <ul>
                  <li>
                    <!--의뢰서 페이지로 이동-->
                    <a href="/admin/adminRequest">의뢰서</a>
                  </li>
                  <li>
                    <!--제안서 페이지로 이동-->
                    <a href="/admin/adminProposal">제안서</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>

      </div>
      <div class="sm-12 md-8 col">
        <div class="paper">

          <div class="title">
            <div class="row flex-center">
              <div class="text-center">
                <h1>현황</h1>
              </div>
            </div>
          </div>

          <div class="to-top">
            <a href="#top" class="paper-btn margin">^</a>
          </div>

          <div class="section">
            <div class="row flex-center">
              <div id="chart1" style="width: 800px; height: 500px;"></div>
            </div>
            <div class="row flex-center">
              <div id="chart2" style="width: 800px; height: 500px;"></div>
            </div>
          </div>
        </div>
      </div>
    </div>


  </body>
</html>