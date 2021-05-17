<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <!--jsp:include page = 페이지를 붙여 주는 역활을 한다.-->
  <!--페이지의 공통부분을 표현하기 위해서 사용-->
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
                  <h4 class="card-title">${qna.sj}</h4>
                  <h5 class="card-subtitle ">${qna.nm}</h5>
                  <h5 class="card-subtitle text-muted">${qna.rgsde} 조회 ${qna.co}</h5>
                  <p class="card-text">${qna.cn}</p>
                  <div class="row flex-center child-borders">
                    <!--sessionScope = JSP에서 session의 저장된것을 가져오기 위해서-->
                    <c:if test="${sessionScope.loginSession.nm eq qna.nm}">
                      <a class="paper-btn margin"
                         onclick="location.href='qnaUpdate?no=${param.no}'">수정</a>
                      <a class="paper-btn margin" onclick="check()">삭제</a>
                    </c:if>
                    <a class="paper-btn margin" onclick="location.href='qnaList'">목록</a>
                  </div>
                  <hr>
                  <h4 class="card-title">댓글</h4>
                  <form id="commentForm" name="commentForm">
                    <input type="hidden" name="qnaNo" value="${param.no}">
                    <div class="form-group">
                      <!--작성자 이름을 불러온다.-->
                      <label for="cn">${sessionScope.loginSession.nm}</label>
                      <!-- id = 프론트에서 태그를 찾을때 , name = 백에서 태그를 찾을때 사용-->
                      <textarea class="no-resize input-block" id="cn" name="cn"
                                placeholder="댓글을 남겨보세요"></textarea>
                      <div class="row flex-right">
                        <a class="paper-btn margin" onclick="insertComment()">등록</a>
                        <a class="paper-btn margin" onclick="check()">삭제</a>
                      </div>
                    </div>
                  </form>
                  <hr>
                  <div>
                    <table id="commentList"></table>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--JQuery를 사용 할 수 있게 가져오는 script이다.-->
    <script src="../../../resources/js/jquery-3.6.0.min.js"></script>
    <script>
      //게시글을 삭제하기 전에 마지막 확인용 메소드
      function check() {
        const cf = confirm('게시글을 삭제하시겠습니까?')
        if (cf) {
          //location.href = deleteQnA? no = 페이지 이동
          location.href = 'deleteQnA?no=${param.no}'
        }
      }

      //여기서부터는 댓글 추가
      function insertComment() {
        //serialize = #commentForm의 데이터를 자동으로 자리를 찾아준다.
        $.ajax({
          type: "post",
          //$("#commentForm") = 댓글 <form>태그의 아이디값
          data: $("#commentForm").serialize(),
          //url = 클라이언트에서 서버로 요청 할때의 주소
          //comment/insertComment
          //comment = mybatis.config에서 commentVO의 단축어
          //insertComment = Mapper의 쿼리문의 아이디값
          url: "/comment/insertComment",
          success: function (result) {
            //$('#cn') = 댓글 textarea의 태그의 아이디값
            //val('') = 댓글이 전송 되었을때 다시 빈 textarea로 보여주기 위해 사용
            $('#cn').val('')
            //("#commentList") = 댓글의 전체리스트를 다 지워버리고 다시 갱신하기 위해
            $("#commentList").empty();
            //CommentListView(); 댓글의 리스트를 불러오기 위한 Method
            CommentListView();
          },
          //특정 오류가 발생했을때 보여주는 err 메소드
          error: function (err) {
            console.log("등록 에러:" + err);
          }
        })
      }

      //댓글 삭제
      //("#commentList") = 댓글의 리스트 아이디값
      //on("click",".delete",function())
      //on click = 동적으로 생성이된 테이블에 이벤트를 걸수있다.
      $("#commentList").on("click", ".delete", function () {
        $.ajax({
          //type:get => get방식 url에 parameter로 값을 넘기는걸 보여준다.
          type: "get",
          //data = no를 보낼건데 $(this).parent().parent().children(".no").text()}
          data: {no: $(this).parent().parent().children(".no").text()},
          //url:comment/deleteComment로 데이터로 요청을 보냄
          url: "/comment/deleteComment",
          success: function (result) {
            //댓글의 List를 불러오기 위해 변수에 ID값 부여
            var commentList3 = $("#commentList");
            //commentList = 댓글에 비워주고 다시 받기 위해
            commentList3.empty();
            //CommentListView(); 댓글의 리스트를 불러오기 위한 Method
            CommentListView();
          },
          error: function (err) {
            alert("err 발생");
          }
        })
      })

      //댓글 수정 페이지로 이동
      //$("#commentList").on("click", ".modify", function()
      //동적으로 생성된 댓글 리스트에 클릭 이벤트를 달기 위해서 on(click)이벤트
      $("#commentList").on("click", ".modify", function () {
        // console.log($(this).parent().parent().children(".no").text())
        const ta = $(this).parent().parent().children("#cn")
        // text 변수에 댓글 새로 수정 할 수 있게 text()를 만듬
        const text = $(this).parent().parent().children("#cn").text()
        ta.html('<textarea class="taComment">' + text + '</textarea>')

        //$(this).attr("class","regComment").text(등록으로)
        //수정버튼을 클릭햇을때 새로 클래스변경 해서 등록 버튼을 새로 만듬
        $(this).attr("class", "regComment").text("등록")
      })

      //commentList on("click", "regComment") 클래스 regComment 등록버튼 에 부여된 클래스
      $('#commentList').on('click', '.regComment', function () {
        $.ajax({
          //"post" 방식 => url parameter로 데이터를 보낼때 보안상 표시해주지 않음
          type: 'post',
          data: {
            "no": $(this).parent().parent().children(".no").text(),
            //html() = 태그나 문자열을 따질것 없이 전부 가져올수있다.
            //text() = 셀렉터 하위에 있는 자식 태그들의 문자열만 출력
            //     ex) <div>안녕하세요</div> 여기서 문자열을 출력
            //val() = input 태그에 정의된 value 속성의 값을 확인하고자 할 때 사용
            //     ex) var name = $("#name").val();   alert(name) = 값을 출력해줌
            "cn": $(".taComment").val()
          },
          url: "/comment/updateComment",
          success: function (result) {
            var commentList4 = $("#commentList");
            commentList4.empty();
            CommentListView();
          },
          error: function () {
            alert("분명 에러 날껀데..");
          }
        })
      })

      //댓글의 리스트를 불러오는 메소드
      CommentListView();

      function CommentListView() {
        $.ajax({
          type: "get",
          data: {
            "qnaNo": ${param.no}
          },
          url: "/comment/getCommentList",
          success: function (result) {
            console.log(result);
            // 화면에 출력
            const commentList = $('#commentList');
            for (row of result) {
              //테이블을 동적으로 생성
              const tr = $('<tr/>');
              const no = $('<td class="no"/>').html(row['no']);
              tr.append(no);
              const writerId = $('<td/>').html(row['writerNo']);
              tr.append(writerId);
              const cn = $('<td id="cn"/>').html(row['cn']);
              tr.append(cn);

              //loginNo = Number($ {sessionScope.loginSession.no})
              //session에 저장된 값을 가져온다.
              const loginNo = Number(${sessionScope.loginSession.no})
              //만약 세션에 저장된 no의 값과 테이블에 있는 no의 값이 맞다면 밑에 코드 출력
              if (loginNo === row['writerNo']) {
                tr.append('<td><button class="modify">수정</button></td>');
                tr.append('<td><button class="delete">삭제</button></td>');
              }
              commentList.append(tr);
            }
          },
          error: function (err) {
            console.log(err);
          }
        })
      }
    </script>
  </body>
</html>