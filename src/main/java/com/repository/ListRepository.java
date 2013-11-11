package com.repository;

import java.util.List;

import com.model.ListElement;

public interface ListRepository {
	

	List<ListElement> findAllListElements();


	Long addAllTimers();

}
