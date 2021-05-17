package com.memoreform.service;

import com.memoreform.vo.CountVO;
import com.memoreform.vo.DealingVO;
import com.memoreform.vo.MemberVO;
import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import java.util.List;

public interface AdminService {

  List<MemberVO> getUserList(MemberVO vo);

  List<MemberVO> getExpertList(MemberVO vo);

  List<RequestVO> getRequestList(RequestVO vo);

  List<ProposalVO> getProposalList(ProposalVO vo);

  CountVO getCount(CountVO vo);

  List<CountVO> getUserCount(CountVO countVO);

  List<CountVO> getExpertCount(CountVO countVO);

  List<CountVO> getRequestCount(CountVO countVO);

  List<CountVO> getProposalCount(CountVO countVO);

  List<DealingVO> getDealingCount(DealingVO dealingVO);

}
