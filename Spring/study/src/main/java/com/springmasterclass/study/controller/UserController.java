package com.springmasterclass.study.controller;

import com.springmasterclass.study.dto.record.UserResponse;
import com.springmasterclass.study.dto.record.UserRequest;
import com.springmasterclass.study.service.UserService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.Value;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(value = "/api/v1/user")
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @GetMapping
    public ResponseEntity<List<UserResponse>> showListUsers(){
        return new ResponseEntity<>(userService.index(), HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<String> createUser(@Valid @RequestBody UserRequest userRq){
        userService.create(userRq);
        return new ResponseEntity<>("Create a new user sucssessfully", HttpStatus.OK);
    }

    @PutMapping("/{id}")
    public ResponseEntity<String> updateUser (@PathVariable("id") String id,@RequestBody UserRequest userRq){
        userService.update(id, userRq);
        return new ResponseEntity<>("Update a user successfully", HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<String> deleteUser(@PathVariable("id") String id) {
        userService.delete(id);
        return new ResponseEntity<>("Delete a user successfully", HttpStatus.OK);
    }
}
