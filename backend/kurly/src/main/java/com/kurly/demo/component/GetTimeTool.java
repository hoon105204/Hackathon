package com.kurly.demo.component;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.stereotype.Component;

@Component
public class GetTimeTool {

	public String timeToString() {
		LocalDateTime localDate = LocalDateTime.now();//For reference
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyMMddHHmmssSS");
		String formattedString = localDate.format(formatter);
		return formattedString;
	}
	
}
