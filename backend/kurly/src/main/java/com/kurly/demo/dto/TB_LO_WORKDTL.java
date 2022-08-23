package com.kurly.demo.dto;

public class TB_LO_WORKDTL {

	private String DTL_ID;
	private String WRK_ID;
	private String PROD_ID;
	private int DTL_NUMB;
	private String DTL_STAT;
	private String DTL_Start;
	private String DTL_END;
	private String PROD_NM;
	private String PROD_TYPE;
	private String PROD_IMG;
	public TB_LO_WORKDTL() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TB_LO_WORKDTL(String dTL_ID, String wRK_ID, String pROD_ID, int dTL_NUMB, String dTL_STAT, String dTL_Start,
			String dTL_END, String pROD_NM, String pROD_TYPE, String pROD_IMG) {
		super();
		DTL_ID = dTL_ID;
		WRK_ID = wRK_ID;
		PROD_ID = pROD_ID;
		DTL_NUMB = dTL_NUMB;
		DTL_STAT = dTL_STAT;
		DTL_Start = dTL_Start;
		DTL_END = dTL_END;
		PROD_NM = pROD_NM;
		PROD_TYPE = pROD_TYPE;
		PROD_IMG = pROD_IMG;
	}
	public String getDTL_ID() {
		return DTL_ID;
	}
	public void setDTL_ID(String dTL_ID) {
		DTL_ID = dTL_ID;
	}
	public String getWRK_ID() {
		return WRK_ID;
	}
	public void setWRK_ID(String wRK_ID) {
		WRK_ID = wRK_ID;
	}
	public String getPROD_ID() {
		return PROD_ID;
	}
	public void setPROD_ID(String pROD_ID) {
		PROD_ID = pROD_ID;
	}
	public int getDTL_NUMB() {
		return DTL_NUMB;
	}
	public void setDTL_NUMB(int dTL_NUMB) {
		DTL_NUMB = dTL_NUMB;
	}
	public String getDTL_STAT() {
		return DTL_STAT;
	}
	public void setDTL_STAT(String dTL_STAT) {
		DTL_STAT = dTL_STAT;
	}
	public String getDTL_Start() {
		return DTL_Start;
	}
	public void setDTL_Start(String dTL_Start) {
		DTL_Start = dTL_Start;
	}
	public String getDTL_END() {
		return DTL_END;
	}
	public void setDTL_END(String dTL_END) {
		DTL_END = dTL_END;
	}
	public String getPROD_NM() {
		return PROD_NM;
	}
	public void setPROD_NM(String pROD_NM) {
		PROD_NM = pROD_NM;
	}
	public String getPROD_TYPE() {
		return PROD_TYPE;
	}
	public void setPROD_TYPE(String pROD_TYPE) {
		PROD_TYPE = pROD_TYPE;
	}
	public String getPROD_IMG() {
		return PROD_IMG;
	}
	public void setPROD_IMG(String pROD_IMG) {
		PROD_IMG = pROD_IMG;
	}
	@Override
	public String toString() {
		return "TB_LO_WORKDTL [DTL_ID=" + DTL_ID + ", WRK_ID=" + WRK_ID + ", PROD_ID=" + PROD_ID + ", DTL_NUMB="
				+ DTL_NUMB + ", DTL_STAT=" + DTL_STAT + ", DTL_Start=" + DTL_Start + ", DTL_END=" + DTL_END
				+ ", PROD_NM=" + PROD_NM + ", PROD_TYPE=" + PROD_TYPE + ", PROD_IMG=" + PROD_IMG + "]";
	}
	
	
	
	
}
