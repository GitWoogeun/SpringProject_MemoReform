package com.memoreform.service;

import com.memoreform.vo.QnAVO;
import java.util.List;

public interface QnAService {

  List<QnAVO> getQnAList(QnAVO qnaVO);

  QnAVO getQnA(QnAVO qnaVO);

  void insertQnA(QnAVO qnaVO);

  void updateQnA(QnAVO qnaVO);

  int updateCount(QnAVO qnaVO);

  void deleteQnA(QnAVO qnaVO);
}
