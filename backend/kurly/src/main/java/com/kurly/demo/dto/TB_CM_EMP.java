package com.kurly.demo.dto;

public class TB_CM_EMP {
	private String EMP_ID;
	private String EMP_NM;
	private String EMP_PW;
	public TB_CM_EMP() {
		super();
	}
	public TB_CM_EMP(String eMP_ID, String eMP_NM, String eMP_PW) {
		super();
		EMP_ID = eMP_ID;
		EMP_NM = eMP_NM;
		EMP_PW = eMP_PW;
	}
	public String getEMP_ID() {
		return EMP_ID;
	}
	public void setEMP_ID(String eMP_ID) {
		EMP_ID = eMP_ID;
	}
	public String getEMP_NM() {
		return EMP_NM;
	}
	public void setEMP_NM(String eMP_NM) {
		EMP_NM = eMP_NM;
	}
	public String getEMP_PW() {
		return EMP_PW;
	}
	public void setEMP_PW(String eMP_PW) {
		EMP_PW = eMP_PW;
	}
	@Override
	public String toString() {
		return "TB_CM_EMP [EMP_ID=" + EMP_ID + ", EMP_NM=" + EMP_NM + ", EMP_PW=" + EMP_PW + "]";
	}
	
	
	
}
