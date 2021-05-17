package com.memoreform.controller;

import com.memoreform.service.CommentService;
import com.memoreform.vo.MemberVO;
import com.memoreform.vo.QnAVO;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

//@Controller와 RestController의 차이
/*@Controller는 MVC패턴에서 주로 View를 반환하기 위해 사용합니다. 하지만
 * Spring MVC Controller에서도 Data를 반환해야하는 경우가 있습니다.
 * Spring MVC Controller에서 Data를 반환하기 위해 사용하는게 @RestController를 주로 활용한다.
 * Controller에서도 Json형태로 데이터를 반환할수 있다.*/


@RequestMapping("/comment")
@Controller
public class CommentController {

  private final CommentService commentService;

  public CommentController(CommentService commentService) {
    this.commentService = commentService;
  }

  //DB에 저장된 댓글들 불러오기
  @RequestMapping("/getCommentList")
  @ResponseBody
  public List<QnAVO> getCommentList(QnAVO qnaVO) {
    System.out.println("=>>>>>>>>>>>>>>>>>getCommentList()호출");
    System.out.println(qnaVO.toString());
    return commentService.getCommentList(qnaVO);
  }

  //댓글을 DB에 저장!
  @RequestMapping(value = "/insertComment", method = RequestMethod.POST)
  @ResponseBody
  public void insertComment(QnAVO qnaVO, HttpSession httpSession) {
    MemberVO loginSession = (MemberVO) httpSession.getAttribute("loginSession");
    System.out.println("=>>>>>>>>controller()");
    qnaVO.setWriterNo(loginSession.getNo());
    System.out.println(qnaVO.toString());  //데이터가 잘 들어가는지 확인
    commentService.insertComment(qnaVO);
  }

  //DB에 저장된 댓글 삭제
  @RequestMapping("/deleteComment")
  @ResponseBody
  public void deleteComment(QnAVO qnaVO) {
    System.out.println("=>>>>>>>>>>>>>>>>>>deleteComment() Controller 호출");
    commentService.deleteComment(qnaVO);
  }

  //DB에 저장된 댓글 수정하기
  @RequestMapping(value = "/updateComment", method = RequestMethod.POST)
  @ResponseBody
  public void updateComment(QnAVO qnaVO, int no, String cn) {
    System.out.println("=>>>>>>>>>>>>>updateComment() updateComment 호출");
    System.out.println(no);
    System.out.println(cn);
    System.out.println(qnaVO.toString());
    commentService.updateComment(qnaVO);
//    System.out.println(commentService.updateComment(commentVO));
//  commentService.updateComment(no);
  }

//  //댓글 수정 페이지로 이동
//  @RequestMapping("qna/qnaGetComment")
//  public void update(){
//
//  }
}
