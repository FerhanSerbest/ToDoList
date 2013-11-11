package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.ListElement;
import com.service.ListService;

@Controller
public class ListController {

	@Autowired
	private ListService listService;
	
	
	
	@RequestMapping(value = "getListElements", method = RequestMethod.GET)
	public String getListElements(Model model) {
		List<ListElement> listElements = listService.findAllListElements();
		model.addAttribute("listElements",listElements);
		List<Long> timerTotal = listService.addAllTimers();
		model.addAttribute("timerTotal", timerTotal);
		
		return "getListElements";
	}
	
}
