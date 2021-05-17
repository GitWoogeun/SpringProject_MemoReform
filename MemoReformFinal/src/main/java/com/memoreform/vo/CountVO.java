package com.memoreform.vo;

import lombok.Data;

@Data
public class CountVO {

  private String month;
  private int userCount, expertCount, rqstdocCount, prpslCount;

}
