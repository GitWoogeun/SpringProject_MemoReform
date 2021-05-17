package com.memoreform.controller;

import com.memoreform.service.UserService;
import com.memoreform.vo.MemberVO;
import com.memoreform.vo.RequestVO;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@RequestMapping("/request")
@Controller
public class RequestController {

  final
  UserService userService;

  public RequestController(UserService userService) {
    this.userService = userService;
  }

  @RequestMapping("/requestForm")
  public void requestForm() {

  }

  @RequestMapping("/requestDetail")
  public void requestDetail(Model model, RequestVO vo) {
    model.addAttribute("request", userService.getRequest(vo));
  }

  @RequestMapping("requestList")
  public void requestList(Model model, RequestVO vo) {
    model.addAttribute("requestList", userService.getRequestListAdmin(vo));
  }

  @RequestMapping(value = "/insertRequest", method = RequestMethod.POST)
  public void insertRequest(RequestVO vo, HttpSession session) {
    MemberVO result = (MemberVO) session.getAttribute("result");
    System.out.println(vo.toString());
    userService.insertRequest(vo);
  }
}
