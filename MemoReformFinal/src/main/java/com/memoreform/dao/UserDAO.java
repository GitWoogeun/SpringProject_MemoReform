package com.memoreform.dao;

import com.memoreform.vo.DealingVO;
import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import java.util.List;

public interface UserDAO {

  //제네릭 : class의 데이터의 타입들을 미리 지정해 놓는것
  //RequestVO타입(제네릭)으로 List에 변수들을 타입을 미리 지정해서 가져온다.
  //그래서 매개변수로 RequestVO클래스의 requestVO로 변수들을 가져온다

  //특정 회원이 작성한 의뢰서 보여주는 쿼리 추상 메소드
  List<RequestVO> getRequestList(RequestVO requestVO);

  //관리자 아이디로 의뢰서의 리스트를 볼수있는 추상 메소드
  List<RequestVO> getRequestListAdmin(RequestVO requestVO);

  //특정 의뢰서를 보여주는 쿼리 추상 메소드
  RequestVO getRequest(RequestVO requestVO);

  //특정 제안서를 확인 하는 쿼리 추상 메소드
  ProposalVO getProposal(ProposalVO proposalVO);


  //밑에 부턴 mapper SQL문을 가져오는 메소드 (추상 메소드)
  void insertRequest(RequestVO requestVO);


  //의뢰서의 제목과 내용 사진을 수정하는 쿼리 추상 메소드
  void updateRequest(RequestVO requestVO);

  //등록된 의뢰서를 삭제하는 쿼리 추상 메소드
  void deleteRequest(String no);

  //특정 의뢰서를 체결하는 쿼리 추상 메소드
  void choiceProposal(RequestVO requestVO, ProposalVO proposalVO, DealingVO dealingVO);
}
