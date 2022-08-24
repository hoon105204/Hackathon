package com.kurly.demo.dto;

public class TB_LO_DEVICE {
	private String DEV_ID;
	private String DEV_STAT;
	public TB_LO_DEVICE() {
		super();
	}
	public TB_LO_DEVICE(String dEV_ID, String dEV_STAT) {
		super();
		DEV_ID = dEV_ID;
		DEV_STAT = dEV_STAT;
	}
	public String getDEV_ID() {
		return DEV_ID;
	}
	public void setDEV_ID(String dEV_ID) {
		DEV_ID = dEV_ID;
	}
	public String getDEV_STAT() {
		return DEV_STAT;
	}
	public void setDEV_STAT(String dEV_STAT) {
		DEV_STAT = dEV_STAT;
	}
	@Override
	public String toString() {
		return "TB_LO_DEVICE [DEV_ID=" + DEV_ID + ", DEV_STAT=" + DEV_STAT + "]";
	}
	
}
