package com.kurly.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@SpringBootApplication
public class KurlyApplication {

	public static void main(String[] args) {
		SpringApplication.run(KurlyApplication.class, args);
	}
	
	@RequestMapping("/")
	public String gohome() {
		return "home";
	}
	
	@RequestMapping("/workList")
	public String goworkList() {
		return "workList";
	}

}
