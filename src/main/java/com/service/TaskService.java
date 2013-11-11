package com.service;

import java.util.List;

import com.model.Task;
import com.model.Urgency;

public interface TaskService {

	List<Urgency> findAllUrgencies();

	Task save(Task task);

}