package com.bookStore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bookStore.service.MyBookListService;

import jakarta.websocket.server.PathParam;





@Controller
public class MyBookListController {
    @Autowired
	MyBookListService mybook;
	@RequestMapping("/deletemylist")
	public String delMyList(@PathParam("id") int id) {
		mybook.deleteMybook(id);
		return "redirect:/MyBookList";
		
	}
	
	
}
