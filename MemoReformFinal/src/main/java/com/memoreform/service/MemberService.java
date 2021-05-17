package com.memoreform.service;

import com.memoreform.vo.MemberVO;

public interface MemberService {

  MemberVO userLogin(MemberVO memberVO);

  int userJoin(MemberVO memberVO);

  MemberVO checkEmail(MemberVO memberVO);
}
