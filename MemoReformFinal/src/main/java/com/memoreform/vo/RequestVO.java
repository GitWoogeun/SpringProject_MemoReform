package com.memoreform.vo;

import java.io.File;
import java.io.IOException;
import lombok.Data;
import org.springframework.web.multipart.MultipartFile;

@Data
public class RequestVO {

  private int no, mberNo;
  private String ctgry, sj, cn, photo, sttus, rgsde, photoNm, nm;
  private long photoSize;

  MultipartFile file;

  public void setFile(MultipartFile file) {
    this.file = file;

    if (!file.isEmpty()) {
      photoNm = file.getOriginalFilename();
      photoSize = file.getSize();
      File f = new File(
          "C:\\Users\\Taeyoung\\IdeaProjects\\MemoReform\\src\\main\\webapp\\resources\\upload\\"
              + photoNm);
      try {
        file.transferTo(f);
      } catch (IOException e) {
        e.printStackTrace();
      }
    }
  }
}