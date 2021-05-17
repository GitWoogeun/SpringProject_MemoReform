package com.memoreform.controller;

import com.memoreform.service.impl.NoticeServiceImpl;
import com.memoreform.vo.NoticeVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/notice")
@Controller
public class NoticeController {

  private final NoticeServiceImpl noticeService;

  public NoticeController(NoticeServiceImpl service) {
    this.noticeService = service;
  }

  @RequestMapping("/noticeList")
  public void notice(Model model, NoticeVO vo) {
    model.addAttribute("noticeList", noticeService.getNoticeList(vo));
  }

  @RequestMapping("/noticeDetail")
  public void noticeDetail(Model model, NoticeVO vo) {
    noticeService.updateCount(vo);
    model.addAttribute("notice", noticeService.getNotice(vo));
  }

  @RequestMapping("/noticeForm")
  public void noticeForm() {
  }

  @RequestMapping("insertNotice")
  public String insertNotice(NoticeVO vo) {
    noticeService.insertNotice(vo);
    return "redirect:/notice/noticeList";
  }

  @RequestMapping("/noticeUpdate")
  public void noticeUpdate(Model model, NoticeVO vo) {
    model.addAttribute("notice", noticeService.getNotice(vo));
  }

  @RequestMapping("/updateNotice")
  public String updateNotice(NoticeVO vo) {
    noticeService.updateNotice(vo);
    return "redirect:/notice/noticeDetail";
  }

  @RequestMapping("/deleteNotice")
  public String deleteNotice(NoticeVO vo) {
    noticeService.deleteNotice(vo);
    return "redirect:/notice/noticeList";
  }
}
