package com.memoreform.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/error")
@Controller
public class ErrorController {

  @RequestMapping("/error404")
  public void error404() {
    System.out.println("404에러");
  }

  @RequestMapping("/error405")
  public void error405() {
    System.out.println("405에러");
  }

  @RequestMapping("/error500")
  public void error500() {
    System.out.println("500에러");

  }
}
