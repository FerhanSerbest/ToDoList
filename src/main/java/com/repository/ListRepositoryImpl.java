package com.repository;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;

import com.model.ListElement;
import com.model.Task;

@Repository("listRepository")
public class ListRepositoryImpl implements ListRepository {

	@PersistenceContext
	private EntityManager em;

	public List<ListElement> findAllListElements() {
		
		TypedQuery<ListElement> query = em.createNamedQuery(Task.FIND_LIST_ELEMENTS, ListElement.class);
		return query.getResultList();
	}



	public Long addAllTimers() {
		Query q = em.createQuery("SELECT SUM(t.timer) FROM Task t");
		return (Long) q.getSingleResult();
	}

}
