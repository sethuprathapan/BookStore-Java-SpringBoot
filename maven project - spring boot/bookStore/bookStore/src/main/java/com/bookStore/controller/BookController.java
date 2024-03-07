package com.bookStore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bookStore.entity.Book;
import com.bookStore.entity.MyBookList;
import com.bookStore.service.BookService;
import com.bookStore.service.MyBookListService;

import jakarta.websocket.server.PathParam;


@Controller
public class BookController {
	@Autowired
	private BookService serviceB;
	
	@Autowired
	private MyBookListService myBookService;
	
	
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
		List<Book> list=serviceB.getAllBook();
		return new ModelAndView("BookList","book",list);
	}
	@GetMapping("/New_Book")
	public String New_Book() {
		return "New_Book";
	}
	
	@PostMapping("/save")
	public String addBook(@ModelAttribute Book book){
		serviceB.save(book);
		return "redirect:/BookList";
		
		
		
	}
	@RequestMapping("/mylist")
	    public String getMyBookList(@RequestParam("id") int id) {
		 Book b=serviceB.getBookById(id);	
			MyBookList book=new MyBookList(b.getId(),b.getName(),b.getAuthor(),b.getPrice());
			myBookService.saveMyBookList(book);
			return "redirect:/MyBookList";
	        
	    }
	@RequestMapping("/edit")
	public ModelAndView getedit(@PathParam("id") int id) {
		 
		 Book item=serviceB.getBookById(id);
		return new ModelAndView("edit","book",item);
	}
		
	@GetMapping("/MyBookList")
	public ModelAndView MyBookList() {
		List<MyBookList> list=myBookService.getMyBookList();
		
		
		return new ModelAndView("MyBookList","book",list);
	}

}
