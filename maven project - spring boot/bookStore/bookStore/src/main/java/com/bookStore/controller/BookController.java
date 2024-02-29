package com.bookStore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.bookStore.entity.Book;
import com.bookStore.service.BookService;


@Controller
public class BookController {
	@Autowired
	private BookService service;
	@GetMapping("/home")
	public String home() {
		return "home";
	}
//	@RequestMapping("/sethu")
//	@ResponseBody
//	public String home1() {
//		return "Hello World";
//	}
	
	@GetMapping("/Book_register")
	public String Book_register(){
		return "Book_register";
	}
	@GetMapping("/BookList")
	public ModelAndView BookList() {
		List<Book> list=service.getAllBook();
		return new ModelAndView("BookList","book",list);
	}
	@GetMapping("/New_Book")
	public String New_Book() {
		return "New_Book";
	}
	
	@PostMapping("/save")
	public String addBook(@ModelAttribute Book book){
		service.save(book);
		return "redirect:/BookList";
		
		
		
	}
	@GetMapping("/MyBookList")
	public String MyBookList() {
		return "MyBookList";
	}
	

}
