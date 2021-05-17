package com.memoreform.controller;

import com.memoreform.dao.ProposalDAO;
import com.memoreform.service.ProposalService;
import com.memoreform.vo.ProposalVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/proposal")
@Controller
public class ProposalController {

  private final ProposalService proposalService;

  public ProposalController(ProposalService proposalService) {
    this.proposalService = proposalService;
  }

  @RequestMapping("/proposalForm")
  public void proposalForm() {
  }

  @RequestMapping("/proposalList")
  public void proposalList(Model model, ProposalVO vo) {
    model.addAttribute("proposalList", proposalService.getProposalList(vo));
  }
}
