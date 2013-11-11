package com.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.model.Urgency;
import com.model.Task;
import com.repository.TaskRepository;


@Service("taskService")
public class TaskServiceImpl implements TaskService {
	
	@Autowired
	private TaskRepository taskRepository;

	public List<Urgency> findAllUrgencies() {
		
		List<Urgency> urgencies = new ArrayList<Urgency>();
		
		Urgency run = new Urgency();
		run.setDesc("High");
		urgencies.add(run);
		
		Urgency bike = new Urgency();
		bike.setDesc("Medium");
		urgencies.add(bike);
		
		Urgency swim = new Urgency();
		swim.setDesc("Low");
		urgencies.add(swim);
		
		return urgencies;
	}

	@Transactional
	public Task save(Task task) {
		
		task = taskRepository.save(task);
		
		return task;
	}
	
}
