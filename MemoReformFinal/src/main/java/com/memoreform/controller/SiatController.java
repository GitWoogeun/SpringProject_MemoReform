package com.memoreform.controller;

import com.memoreform.service.MemberService;
import com.memoreform.service.UserService;
import com.memoreform.vo.MemberVO;
import com.memoreform.vo.RequestVO;
import java.util.Date;
import java.util.Random;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SiatController {

  final
  MemberService memberService;

  final
  UserService userService;

  public SiatController(MemberService memberService, UserService userService) {
    this.memberService = memberService;
    this.userService = userService;
  }

  @RequestMapping("makeUser")
  public void makeUser() {
    String[] firstName = {
        "민준", "서준", "예준", "도윤", "시우", "주원", "하준", "지호", "지후", "준서", "준우", "현우", "도현", "지훈", "건우",
        "우진", "선우", "서진", "민재", "현준","우근","진영",
        "서연", "서윤", "지우", "서현", "민서", "하은", "하윤", "윤서", "지유", "지민", "채원", "지윤", "은서", "수아", "다은",
        "예은", "지아", "수빈", "소율", "예린","우순","진순"
    };

    String[] lastName = {
        "김", "이", "박", "최", "정", "강", "조", "윤", "장", "임", "한", "오", "서", "신", "권", "황", "안", "송",
        "전", "홍"
    };

    for (int i = 1; i <= 100; i++) {

      Random random = new Random();
      int firstNum = random.nextInt(firstName.length);
      int lastNum = random.nextInt(lastName.length);

      String name = lastName[lastNum] + firstName[firstNum];
      String email = "expert" + String.valueOf(i) + "@memoreform.com";

      MemberVO memberVO = new MemberVO();

      memberVO.setNm(name);
      memberVO.setEmail(email);
      memberVO.setPassword("a");
      memberVO.setExpertCtgry("의류");
      memberVO.setTy("E");
      memberVO.setRgsde("2020-05-01");

      memberService.userJoin(memberVO);
      System.out.println(memberVO.toString());
    }
  }

  @RequestMapping("makeRequest")
  public void makeRequest() {
    RequestVO requestVO = new RequestVO();

//    for (int i = 1599; i < 1699  ; i++) {
//      requestVO.setMberNo(i);
//      requestVO.setCtgry("의류");
//      requestVO.setSj("의류 의뢰서");
//      requestVO.setCn("의류 내용");
//      requestVO.setPhotoNm("의류.png");
//      userService.insertRequest(requestVO);
//    }
//
//
//    for (int i = 1699; i < 1801; i++) {
//      requestVO.setMberNo(i);
//      requestVO.setCtgry("가구");
//      requestVO.setSj("가구 의뢰서");
//      requestVO.setCn("가구 내용");
//      requestVO.setPhotoNm("가구.png");
//      userService.insertRequest(requestVO);
//    }

//     for (int i = 1231; i < 1363; i++) {
//      requestVO.setMberNo(i);
//      requestVO.setCtgry("가죽");
//      requestVO.setSj("가죽 의뢰서");
//      requestVO.setCn("가죽 내용");
//      requestVO.setPhotoNm("가죽.png");
//      userService.insertRequest(requestVO);
//    }

//    for (int i = 1399; i < 1399; i++) {
//      requestVO.setMberNo(i);
//      requestVO.setCtgry("가전");
//      requestVO.setSj("가전 의뢰서");
//      requestVO.setCn("가전 내용");
//      requestVO.setPhotoNm("가전.png");
//      userService.insertRequest(requestVO);
//    }
  }

//  <insert id="insertRequest">
//  INSERT INTO RQSTDOC (NO, MBER_NO, CTGRY, SJ, CN, PHOTO)
//  VALUES (SEQ_RQSTDOC_NO.NEXTVAL, #{mberNo}, #{ctgry}, #{sj}, #{cn}, #{photoNm})
//  </insert>
}
