package com.memoreform.dao;

import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import java.util.List;

public interface ExpertDAO {

  //의뢰서의 종류와 아직 체결되지 않은 상태의 의뢰서리스트를 보여주는 쿼리 추상 메소드
  List<RequestVO> getRequestList(RequestVO requestVO);

  //전문가가 작성한 제안서리스트를 보여주는 쿼리 추상 메소드
  List<ProposalVO> getProposalList(ProposalVO proposalVO);

  //일반 유저가 작성한 의뢰서를 보여주는 쿼리 추상 메소드
  RequestVO getRequest(RequestVO requestVO);

  //전문가가 작성한 제안서를 보여주는 쿼리 추상 메소드
  ProposalVO getProposal(ProposalVO proposalVO);

  //DB에 제안서를 저장하는 쿼리 추상 메소드
  void insertProposal(ProposalVO proposalVO);
}
