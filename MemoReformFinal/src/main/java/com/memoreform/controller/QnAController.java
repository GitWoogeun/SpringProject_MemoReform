package com.memoreform.controller;

import com.memoreform.vo.MemberVO;
import com.memoreform.vo.QnAVO;
import com.memoreform.service.QnAService;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/qna")
@Controller
public class QnAController {

  private final QnAService qnAService;

  public QnAController(QnAService qnAService) {
    this.qnAService = qnAService;
  }

  @RequestMapping("/qnaList")
  public void qna(Model model, QnAVO vo) {
    model.addAttribute("qnaList", qnAService.getQnAList(vo));
  }

  @RequestMapping("/qnaDetail")
  public void qnaDetail(Model model, QnAVO vo) {
    qnAService.updateCount(vo);
    model.addAttribute("qna", qnAService.getQnA(vo));
  }

  @RequestMapping("/qnaForm")
  public void qnaForm() {

  }

  @RequestMapping("/insertQnA")
  public String insertQna(QnAVO vo, HttpSession session) {
    MemberVO memberVO = (MemberVO) session.getAttribute("loginSession");
    vo.setWriterNo(memberVO.getNo());
    qnAService.insertQnA(vo);
    return "redirect:/qna/qnaList";
  }

  @RequestMapping("/qnaUpdate")
  public void qnaUpdate(Model model, QnAVO vo) {
    model.addAttribute("qna", qnAService.getQnA(vo));
  }

  @RequestMapping("/updateQnA")
  public String updateQnA(QnAVO vo) {
    qnAService.updateQnA(vo);
    return "redirect:/qna/qnaList";
  }

  @RequestMapping("deleteQnA")
  public String deleteQnA(QnAVO vo) {
    qnAService.deleteQnA(vo);
    return "redirect:/qna/qnaList";
  }
}
