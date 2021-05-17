package com.memoreform.service.impl;

import com.memoreform.dao.MemberDAO;
import com.memoreform.service.MemberService;
import com.memoreform.vo.MemberVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {

  private final MemberDAO memberDAO;

  public MemberServiceImpl(MemberDAO memberDAO) {
    this.memberDAO = memberDAO;
  }

  @Override
  public MemberVO userLogin(MemberVO vo) {
    return memberDAO.userLogin(vo);
  }

  @Override
  public int userJoin(MemberVO vo) {
    return memberDAO.userJoin(vo);
  }

  @Override
  public MemberVO checkEmail(MemberVO memberVO) {
    return memberDAO.checkEmail(memberVO);
  }
}
