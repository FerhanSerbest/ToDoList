package com.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.model.ListElement;
import com.repository.ListRepository;

@Service("listService")
public class ListServiceImpl implements ListService {

	
	@Autowired
	private ListRepository listRepository;

	public List<ListElement> findAllListElements() {
		return listRepository.findAllListElements();
	}

	public List<Long> addAllTimers() {
		Long timer = listRepository.addAllTimers();
		if (timer == null){
			List<Long> emptyList = new ArrayList<Long>();
			return emptyList;
		}
		else {
			Long timerTotalMinutes = timer % 60 ;
			Long timerTotalHours = timer / 60;
			List<Long> timerTotal = new ArrayList<Long>();
			timerTotal.add(timerTotalHours);
			timerTotal.add(timerTotalMinutes);
			return timerTotal;
		}
		
	}

	

}
