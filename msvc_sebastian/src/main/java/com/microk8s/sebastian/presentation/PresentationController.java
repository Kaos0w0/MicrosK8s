package com.microk8s.sebastian.presentation;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/msvc_sebastian")
public class PresentationController {

    @GetMapping("")
    public ResponseEntity<Map<String, String>> presentation(){
        Map<String, String> response = new HashMap<>();
        response.put("mensaje", "Servicio de Sebastián: Hay 10 tipos de personas en este mundo. Los que entienden binario y los que no.");

        return ResponseEntity.ok(response);
    }
}