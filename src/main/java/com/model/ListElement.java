package com.model;

public class ListElement {

	private String taskTitle;
	private String taskUrgency;
	
	public ListElement( String taskTitle, String taskUrgency){
		this.taskTitle = taskTitle;
		this.taskUrgency = taskUrgency;
	}
	
	public String getTaskUrgency() {
		return taskUrgency;
	}
	public String getTaskTitle() {
		return taskTitle;
	}
	
	public void setTaskUrgency(String taskUrgency) {
		this.taskUrgency = taskUrgency;
	}
	public void setTaskTitle(String taskTitle) {
		this.taskTitle = taskTitle;
	}
	
}
