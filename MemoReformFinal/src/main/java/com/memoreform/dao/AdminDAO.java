package com.memoreform.dao;

import com.memoreform.vo.CountVO;
import com.memoreform.vo.DealingVO;
import com.memoreform.vo.MemberVO;
import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import java.util.List;

public interface AdminDAO {

  //일반회원 리스트 불러오는 쿼리 메소드
  List<MemberVO> getUserList(MemberVO vo);

  //전문가 회원 리스트를 불러오는 쿼리 메소드
  List<MemberVO> getExpertList(MemberVO vo);

  //의뢰서 리스트 불러오는 쿼리 메소드
  List<RequestVO> getRequestList(RequestVO vo);

  //제안서 리스트 불러오는 쿼리 메소드
  List<ProposalVO> getProposalList(ProposalVO vo);

  //유저 회원수 , 전문가 회원수 , 의뢰서 작성한 수 , 제안서를 작성한 수를 보여주는 쿼리 메소드
  CountVO getCount(CountVO vo);

  //몇년 몇월에 일반유저가 가입한 수를 보여주는 쿼리 메소드
  List<CountVO> getUserCount(CountVO countVO);

  //몇년 몇월에 전문가유저가 가입한 수를 보여주는 쿼리 메소드
  List<CountVO> getExpertCount(CountVO countVO);

  //몇년 몇월에 의뢰서를 몇개 작성되었는지 확인하는 쿼리 메소드
  List<CountVO> getRequestCount(CountVO countVO);

  //몇년 몇월에 몇개의 제안서가 작성되었는지 확인하는 쿼리 메소드
  List<CountVO> getProposalCount(CountVO countVO);

  //현재 매년 몇월에 매출이 얼마인지 확인하는 쿼리 메소드
  List<DealingVO> getDealingCount(DealingVO dealingVO);
}
