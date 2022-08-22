package com.kurly.demo.dto;

public class APIdto {
	
	private String id;

	public APIdto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public APIdto(String id) {
		super();
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "APIdto [id=" + id + "]";
	}
	

}
