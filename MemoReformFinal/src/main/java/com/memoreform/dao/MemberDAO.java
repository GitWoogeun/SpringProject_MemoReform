package com.memoreform.dao;

import com.memoreform.vo.MemberVO;

public interface MemberDAO {

  //유저 회원 가입 쿼리 추상 메소드
  int userJoin(MemberVO vo);

  //유저 로그인을 보여주는 쿼리 추상 메소드
  MemberVO userLogin(MemberVO vo);

  //회원 가입시 이메일 중복이 있는지 확인하는 쿼리
  MemberVO checkEmail(MemberVO memberVO);
}
