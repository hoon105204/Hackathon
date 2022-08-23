package com.kurly.demo.dto;

public class TB_LO_USING {
	private String USE_ID;
	private String EMP_ID;
	private String DEV_ID;
	private String USE_STAT;
	private String USE_START;
	private String USE_END;
	public TB_LO_USING() {
		super();
	}
	public TB_LO_USING(String uSE_ID, String eMP_ID, String dEV_ID, String uSE_STAT, String uSE_START, String uSE_END) {
		super();
		USE_ID = uSE_ID;
		EMP_ID = eMP_ID;
		DEV_ID = dEV_ID;
		USE_STAT = uSE_STAT;
		USE_START = uSE_START;
		USE_END = uSE_END;
	}
	public String getUSE_ID() {
		return USE_ID;
	}
	public void setUSE_ID(String uSE_ID) {
		USE_ID = uSE_ID;
	}
	public String getEMP_ID() {
		return EMP_ID;
	}
	public void setEMP_ID(String eMP_ID) {
		EMP_ID = eMP_ID;
	}
	public String getDEV_ID() {
		return DEV_ID;
	}
	public void setDEV_ID(String dEV_ID) {
		DEV_ID = dEV_ID;
	}
	public String getUSE_STAT() {
		return USE_STAT;
	}
	public void setUSE_STAT(String uSE_STAT) {
		USE_STAT = uSE_STAT;
	}
	public String getUSE_START() {
		return USE_START;
	}
	public void setUSE_START(String uSE_START) {
		USE_START = uSE_START;
	}
	public String getUSE_END() {
		return USE_END;
	}
	public void setUSE_END(String uSE_END) {
		USE_END = uSE_END;
	}
	@Override
	public String toString() {
		return "TB_LO_USING [USE_ID=" + USE_ID + ", EMP_ID=" + EMP_ID + ", DEV_ID=" + DEV_ID + ", USE_STAT=" + USE_STAT
				+ ", USE_START=" + USE_START + ", USE_END=" + USE_END + "]";
	}
	
	
}
