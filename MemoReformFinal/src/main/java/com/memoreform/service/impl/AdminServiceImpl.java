package com.memoreform.service.impl;

import com.memoreform.dao.AdminDAO;
import com.memoreform.service.AdminService;
import com.memoreform.vo.CountVO;
import com.memoreform.vo.DealingVO;
import com.memoreform.vo.MemberVO;
import com.memoreform.vo.ProposalVO;
import com.memoreform.vo.RequestVO;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

  private final AdminDAO adminDAO;

  public AdminServiceImpl(AdminDAO adminDAO) {
    this.adminDAO = adminDAO;
  }

  @Override
  public List<MemberVO> getUserList(MemberVO vo) {
    return adminDAO.getUserList(vo);
  }

  @Override
  public List<MemberVO> getExpertList(MemberVO vo) {
    return adminDAO.getExpertList(vo);
  }

  @Override
  public List<RequestVO> getRequestList(RequestVO vo) {
    return adminDAO.getRequestList(vo);
  }

  @Override
  public List<ProposalVO> getProposalList(ProposalVO vo) {
    return adminDAO.getProposalList(vo);
  }

  @Override
  public CountVO getCount(CountVO vo) {
    return adminDAO.getCount(vo);
  }

  @Override
  public List<CountVO> getUserCount(CountVO countVO) {
    return adminDAO.getUserCount(countVO);
  }

  @Override
  public List<CountVO> getExpertCount(CountVO countVO) {
    return adminDAO.getExpertCount(countVO);
  }

  @Override
  public List<CountVO> getRequestCount(CountVO countVO) {
    return adminDAO.getRequestCount(countVO);
  }

  @Override
  public List<CountVO> getProposalCount(CountVO countVO) {
    return adminDAO.getProposalCount(countVO);
  }

  @Override
  public List<DealingVO> getDealingCount(DealingVO dealingVO) {
    return adminDAO.getDealingCount(dealingVO);
  }
}
