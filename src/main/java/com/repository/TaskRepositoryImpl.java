package com.repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.model.Task;

@Repository("taskRepository")
public class TaskRepositoryImpl implements TaskRepository {
	
	@PersistenceContext
	private EntityManager em;

	public Task save(Task task) {
		
		em.persist(task);
		
		em.flush();
		
		return task;
	}

}
