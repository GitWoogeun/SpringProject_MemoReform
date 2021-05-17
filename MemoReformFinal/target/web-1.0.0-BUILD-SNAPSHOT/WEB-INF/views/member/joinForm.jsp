<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
  <jsp:include page="../common/header.jsp"/>
  <body>
    <!-- 네비게이션 바 -->
    <jsp:include page="../common/nav.jsp"/>
    <div id="top" class="row site">
      <div class="sm-12 col">
        <div class="paper">
          <%-- 상단 제목 --%>
          <div class="title">
            <div class="row flex-center">
              <div class="text-center">
                <h1>회원 등록</h1>
              </div>
            </div>
          </div>

          <!-- 탑 이동 -->
          <div class="to-top">
            <a href="#top" class="paper-btn margin">^</a>
          </div>

          <div class="section">
            <div class="row flex-spaces">
              <div class="sm-6 col">
                <form id="joinForm" action="/member/joinMember">
                  <div class="form-group">
                    <label for="name">이름</label>
                    <input class="input-block" type="text" placeholder="실명을 입력해주세요." id="name"
                           name="nm">
                  </div>
                  <div class="form-group">
                    <label for="email">이메일</label>
                    <input class="input-block" type="email" placeholder="example@memoreform.com"
                           id="email" name="email">
                  </div>
                  <div class="form-group">
                    <label for="password">비밀번호</label>
                    <input class="input-block" type="password" placeholder="비밀번호를 입력해주세요."
                           id="password" name="password">
                  </div>
                  <div class="form-group">
                    <button id="submit" class="btn-block btn-primary">회원등록</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <script src="../../../resources/js/jquery-3.6.0.min.js"></script>
    <script>
      //flag = 임시 return을 해줄수 있는 역활을 한다.
      //조건문을 빠져나가기 위해 사용할 플래그(flag) 변수 이다.
      let flag = false

      /*   focus = input 태그를 마우스로 클릭하여 입력상태로 만드는것을 focus를 얻었다고 한다.
           blur  = input 태그 입력상태를 떠난것을 포커스를 벗어났다고 한다.
      * */

      //ID값이 email인 input태그창에서 벗어났을때 밑에 ajax가 실행
      $('#email').blur(function () {
        const email = $('#email').val();
        $.ajax({
          type: 'get',
          url: '/member/checkEmail',
          data: {
            'email': email
          },
          success: function (data) {
            //중복된 email값이 있을때
            if (data === "No") {
              $('#email').css('border-color', 'red').val('').focus()
              flag = false
            }
            //중복된 email값이 없을때
            else {
              $('#email').css('border-color', '')
              flag = true
            }
          },
          error: function () {
            alert("접속실패")
          }
        })
      })

      //회원등록 버튼의 ID값 = submit
      $('#submit').click(function () {
        if (flag) {
          //button태그를 서버에 전송할려면 submit()메소드를 사용하면 보낼수있다.
          //<form>태그의 type:submit일때 서버에 다이렉트로 전송하기 때문에
          $("joinForm").submit();
        }
      });

    </script>
  </body>
</html>