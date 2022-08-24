package com.kurly.demo.dto;

public class TB_LO_WORK {
	private String WRK_ID;
	private String EMP_ID;
	private String WRK_STAT;
	private String WRK_PRODUCE;
	private String WRK_START;
	private String WRK_END;
	private String WRK_DUEDATE;
	public TB_LO_WORK() {
		super();
	}
	
	
	
	public TB_LO_WORK(String wRK_ID, String eMP_ID, String wRK_STAT, String wRK_PRODUCE, String wRK_START,
			String wRK_END, String wRK_DUEDATE) {
		super();
		WRK_ID = wRK_ID;
		EMP_ID = eMP_ID;
		WRK_STAT = wRK_STAT;
		WRK_PRODUCE = wRK_PRODUCE;
		WRK_START = wRK_START;
		WRK_END = wRK_END;
		WRK_DUEDATE = wRK_DUEDATE;
	}


	@Override
	public String toString() {
		return "TB_LO_WORK [WRK_ID=" + WRK_ID + ", EMP_ID=" + EMP_ID + ", WRK_STAT=" + WRK_STAT + ", WRK_PRODUCE="
				+ WRK_PRODUCE + ", WRK_START=" + WRK_START + ", WRK_END=" + WRK_END + ", WRK_DUEDATE=" + WRK_DUEDATE
				+ "]";
	}

	public String getWRK_ID() {
		return WRK_ID;
	}

	public void setWRK_ID(String wRK_ID) {
		WRK_ID = wRK_ID;
	}

	public String getEMP_ID() {
		return EMP_ID;
	}

	public void setEMP_ID(String eMP_ID) {
		EMP_ID = eMP_ID;
	}

	public String getWRK_STAT() {
		return WRK_STAT;
	}

	public void setWRK_STAT(String wRK_STAT) {
		WRK_STAT = wRK_STAT;
	}

	public String getWRK_PRODUCE() {
		return WRK_PRODUCE;
	}

	public void setWRK_PRODUCE(String wRK_PRODUCE) {
		WRK_PRODUCE = wRK_PRODUCE;
	}

	public String getWRK_START() {
		return WRK_START;
	}

	public void setWRK_START(String wRK_START) {
		WRK_START = wRK_START;
	}

	public String getWRK_END() {
		return WRK_END;
	}

	public void setWRK_END(String wRK_END) {
		WRK_END = wRK_END;
	}

	public String getWRK_DUEDATE() {
		return WRK_DUEDATE;
	}

	public void setWRK_DUEDATE(String wRK_DUEDATE) {
		WRK_DUEDATE = wRK_DUEDATE;
	}
	
}
