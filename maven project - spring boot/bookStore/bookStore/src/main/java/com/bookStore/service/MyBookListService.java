package com.bookStore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bookStore.entity.MyBookList;
import com.bookStore.repository.myBookListRepository;

@Service
public class MyBookListService {
	@Autowired
	private myBookListRepository mybooklist;
	public void saveMyBookList(MyBookList mybook) {
		mybooklist.save(mybook);
	}
	
	public List<MyBookList> getMyBookList(){
		return mybooklist.findAll();
	}
	
	public void deleteMybook(int id) {
		
		mybooklist.deleteById(id);;
	}
	public void deleteBook(int id) {
		mybooklist.deleteById(id);
	}

}
