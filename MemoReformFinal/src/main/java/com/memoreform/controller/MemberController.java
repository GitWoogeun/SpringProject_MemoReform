package com.memoreform.controller;

import com.memoreform.vo.MemberVO;
import com.memoreform.service.MemberService;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@RequestMapping("/member")
@Controller
public class MemberController {

  private final MemberService memberService;

  public MemberController(MemberService memberService) {
    this.memberService = memberService;
  }

  @RequestMapping("/joinForm")
  public void joinForm() {
  }

  @RequestMapping("/loginForm")
  public void loginForm() {
  }

  // 회원가입
  @RequestMapping("/joinMember")
  public String joinMember(Model model, MemberVO vo) {
    model.addAttribute(memberService.userJoin(vo));
    return "redirect:/";
  }

  // 로그인
  @RequestMapping(value = "/loginMember", method = RequestMethod.POST)
  public String loginMember(MemberVO memberVO, HttpSession session) {

    MemberVO loginSession = memberService.userLogin(memberVO);

    // 로그인 성공
    if (loginSession != null) {
      // 성공하면 세션에 정보 저장
      session.setAttribute("loginSession", loginSession);

      // 유형에 따라서 분기시킴
      if (loginSession.getTy().equals("U")) {
        return "redirect:/user/myPage";
      } else if (loginSession.getTy().equals("E")) {
        return "redirect:/expert/myPage";
      } else {
        return "redirect:/admin/adminMain";
      }
    } else {
      return "redirect:/";
    }
  }

  // 로그아웃
  @RequestMapping("/logoutMember")
  public String logoutMember(HttpSession session) {
    session.invalidate();
    return "redirect:/";
  }

  // 이메일 체크
  @RequestMapping("/checkEmail")
  @ResponseBody
  public String checkEmail(MemberVO memberVO) {
    MemberVO result = memberService.checkEmail(memberVO);

    // 중복됬다.
    if (result != null) {
      return "No";
    } else {
      return "Ok";
    }
  }
}
