package com.service;

import java.util.List;

import com.model.ListElement;


public interface ListService {


	List<ListElement> findAllListElements();


	List<Long> addAllTimers();
	
}
