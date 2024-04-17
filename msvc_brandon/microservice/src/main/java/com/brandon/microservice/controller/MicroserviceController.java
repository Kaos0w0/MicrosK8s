package com.brandon.microservice.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;


@RestController
public class MicroserviceController {
	@GetMapping("/brandon/{name}")
	public Map <String, String> get_lucky_number(@PathVariable String name) {
		Map <String, String> response = new HashMap<>();

		int firstLetterAscii = (int) name.charAt(0);
		int lastLetterAscii = (int) name.charAt(name.length() - 1);
		int asciiDifference = Math.abs(firstLetterAscii - lastLetterAscii);

		Random random = new Random();
		int luckyNumber = random.nextInt(asciiDifference + 1);

		response.put("name", name);
		response.put("lucky number", Integer.toString(luckyNumber));

		return response;
	}
}
