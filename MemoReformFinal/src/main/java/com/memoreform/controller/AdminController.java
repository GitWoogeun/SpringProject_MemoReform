package com.memoreform.controller;

import com.memoreform.service.AdminService;
import com.memoreform.vo.CountVO;
import com.memoreform.vo.DealingVO;
import com.memoreform.vo.MemberVO;
import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/admin")
@Controller
public class AdminController {

  private final AdminService adminService;

  public AdminController(AdminService adminService) {
    this.adminService = adminService;
  }

  // 관리자 페이지.
  @RequestMapping("/adminMain")
  public void adminMain(Model model, CountVO countVO, DealingVO dealingVO) {
    model.addAttribute("userCount", adminService.getUserCount(countVO));
    model.addAttribute("expertCount", adminService.getExpertCount(countVO));
    model.addAttribute("requestCount", adminService.getRequestCount(countVO));
    model.addAttribute("proposalCount", adminService.getProposalCount(countVO));
    model.addAttribute("dealingCount", adminService.getDealingCount(dealingVO));
  }

  @RequestMapping("/adminUser")
  public void adminUser(Model model, MemberVO memberVO) {
    model.addAttribute("userList", adminService.getUserList(memberVO));
  }

  @RequestMapping("/adminExpert")
  public void adminExpert(Model model, MemberVO memberVO) {
    model.addAttribute("expertList", adminService.getExpertList(memberVO));
  }

  @RequestMapping("/adminRequest")
  public void adminRequest(Model model, RequestVO requestVO) {
    model.addAttribute("requestList", adminService.getRequestList(requestVO));
  }

  @RequestMapping("/adminProposal")
  public void adminProposal(Model model, ProposalVO proposalVO) {
    model.addAttribute("proposalList", adminService.getProposalList(proposalVO));
  }
}
