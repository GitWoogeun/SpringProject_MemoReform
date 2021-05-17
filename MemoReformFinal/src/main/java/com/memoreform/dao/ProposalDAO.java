package com.memoreform.dao;

import com.memoreform.vo.ProposalVO;
import java.util.List;

public interface ProposalDAO {

  //제안서의 목록을 보여주는 쿼리 추상 메소드
  List<ProposalVO> getProposalList(ProposalVO vo);

  //특정 제안서를 보여주는 쿼리
  ProposalVO getProposal(ProposalVO vo);
}
