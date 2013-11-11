package com.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.model.Task;
import com.model.Urgency;
import com.service.TaskService;


@Controller
public class TaskController {

	@Autowired
	private TaskService taskService;
	
	@RequestMapping(value = "/addTask",  method = RequestMethod.GET)
	public String getTitle(@ModelAttribute ("task") Task task) {
	
		return "addTask";
	}
	
	@RequestMapping(value = "/addTask",  method = RequestMethod.POST)
	public String addTask(@Valid @ModelAttribute ("task") Task task, BindingResult result){
		if(result.hasErrors()) {
			return "addTask";
		}
		else {
			taskService.save(task);
		}
		
		return "redirect:index.jsp";
	}
	
	@RequestMapping(value = "/urgencies", method = RequestMethod.GET)
	public @ResponseBody List<Urgency> findAllUrgencies() {
		return taskService.findAllUrgencies();
	}
	
	
	
}
