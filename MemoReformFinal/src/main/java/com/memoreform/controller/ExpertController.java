package com.memoreform.controller;

import com.memoreform.service.ExpertService;
import com.memoreform.vo.MemberVO;
import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/expert")
@Controller
public class ExpertController {

  final
  ExpertService expertService;

  public ExpertController(ExpertService expertService) {
    this.expertService = expertService;
  }

  // 전문가 마이페이지
  @RequestMapping("/myPage")
  public void myPage(Model model, RequestVO requestVO, ProposalVO proposalVO,
      HttpSession httpSession) {

    // 로그인 후의 세션값을 가져옴
    MemberVO loginSession = (MemberVO) httpSession.getAttribute("loginSession");

    requestVO.setCtgry(loginSession.getExpertCtgry());
    proposalVO.setExpertNo(loginSession.getNo());

    model.addAttribute("requestList", expertService.getRequestList(requestVO));
    model.addAttribute("proposalList", expertService.getProposalList(proposalVO));
  }

  @RequestMapping("/viewRequest")
  public void viewRequest(Model model, RequestVO requestVO) {
    model.addAttribute("request", expertService.getRequest(requestVO));
  }

  @RequestMapping("/viewProposal")
  public void viewProposal(Model model, ProposalVO proposalVO) {
    model.addAttribute("proposal", expertService.getProposal(proposalVO));
  }

  @RequestMapping("/insertProposal")
  public void insertProposal() {
  }

  @RequestMapping("/insertProposalKing")
  public String insertProposalKing(ProposalVO proposalVO) {
    expertService.insertProposal(proposalVO);
    return "redirect:/expert/myPage";
  }
}
