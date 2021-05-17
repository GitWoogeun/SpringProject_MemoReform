package com.memoreform.controller;

import com.memoreform.service.ProposalService;
import com.memoreform.service.UserService;
import com.memoreform.vo.DealingVO;
import com.memoreform.vo.MemberVO;
import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/user")
@Controller
public class UserController {

  final
  UserService userService;

  final
  ProposalService proposalService;

  public UserController(UserService userService, ProposalService proposalService) {
    this.userService = userService;
    this.proposalService = proposalService;
  }

  @RequestMapping("/myPage")
  public void myPage(Model model, RequestVO requestVO, ProposalVO proposalVO, HttpSession session) {
    MemberVO loginSession = (MemberVO) session.getAttribute("loginSession");

    proposalVO.setMberNo(loginSession.getNo());
    requestVO.setMberNo(loginSession.getNo());
    model.addAttribute("proposalList", proposalService.getProposalList(proposalVO));
    model.addAttribute("requestList", userService.getRequestList(requestVO));
  }

  @RequestMapping("/viewRequest")
  public void viewRequest(Model model, RequestVO requestVO) {
    model.addAttribute("request", userService.getRequest(requestVO));
  }

  @RequestMapping("/insertRequest")
  public void insertRequest() {
  }

  @RequestMapping(value = "/insertRequestKing", method = RequestMethod.POST)
  public String insertRequestKing(RequestVO requestVO, HttpSession session) {
    MemberVO loginSession = (MemberVO) session.getAttribute("loginSession");
    requestVO.setMberNo(loginSession.getNo());
    System.out.println(requestVO);
    userService.insertRequest(requestVO);
    return "redirect:/user/myPage";
  }

  @RequestMapping("/updateRequest")
  public void updateRequest(Model model, RequestVO requestVO) {
    model.addAttribute("request", userService.getRequest(requestVO));
  }

  @RequestMapping("/updateRequestKing")
  public String updateRequestKing(RequestVO requestVO) {
    userService.updateRequest(requestVO);
    return "redirect:/user/viewRequest?no=" + requestVO.getNo();
  }

  @RequestMapping("/deleteRequest")
  public String deleteRequest(String no) {
    userService.deleteRequest(no);
    return "redirect:/user/myPage";
  }

  @RequestMapping("/viewProposal")
  public void viewProposal(Model model, ProposalVO proposalVO) {
    model.addAttribute("proposal", userService.getProposal(proposalVO));
  }

  @RequestMapping("/choiceProposal")
  public String choiceProposal(@RequestParam String requestNo,
      RequestVO requestVO, ProposalVO proposalVO, DealingVO dealingVO, HttpSession httpSession) {
    requestVO.setNo(Integer.parseInt(requestNo));

    MemberVO memberVO = (MemberVO) httpSession.getAttribute("loginSession");

    dealingVO.setUserNo(memberVO.getNo());
    dealingVO.setRqstdocNo(requestVO.getNo());
    dealingVO.setExpertNo(proposalVO.getExpertNo());
    dealingVO.setPrpslNo(proposalVO.getNo());
    dealingVO.setEstmt(proposalVO.getEstmt());

    userService.choiceProposal(requestVO, proposalVO, dealingVO);
    return "redirect:/user/myPage";
  }

}
