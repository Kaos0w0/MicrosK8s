package org.carlos.springcloud.msvc.carlos.controllers;

import org.carlos.springcloud.msvc.carlos.entity.Person;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PersonController {

    @GetMapping
    public ResponseEntity<Person> message(){
        Person carlosPerson = new Person();
        carlosPerson.setName("Carlos Hernandez");
        carlosPerson.setInformation("This is the microservice of Carlos");
        return ResponseEntity.status(HttpStatus.OK).body(carlosPerson);
    }
}
