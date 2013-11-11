package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Range;

@Entity
@NamedQueries({
	@NamedQuery(name=Task.FIND_LIST_ELEMENTS, query="Select new com.model.ListElement(e.title, e.urgency) " + 
			"from Task e")
})
public class Task {
	
	public static final String FIND_LIST_ELEMENTS = "findListElements";
	
	@Id
	@GeneratedValue
	private Long id;
	
	@NotNull
	private String title;
	
	@Range(min = 1, max = 120)
	private int timer;

	@NotNull
	private String urgency;

	public Long getId() {
		return id;
	}

	public int getTimer() {
		return timer;
	}
	
	public String getTitle() {
		return title;
	}

	public String getUrgency() {
		return urgency;
	}

	public void setId(Long id) {
		this.id = id;
	}


	public void setTimer(int timer) {
		this.timer = timer;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setUrgency(String urgency) {
		this.urgency = urgency;
	}

	
}
