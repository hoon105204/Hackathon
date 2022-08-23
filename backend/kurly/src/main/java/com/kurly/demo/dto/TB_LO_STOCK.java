package com.kurly.demo.dto;

public class TB_LO_STOCK {
	
	public String STK_ID;
	public String PROD_ID;
	public String LOC_ID;
	public String STK_IN;
	public String STK_OUT;
	public String STK_QR;
	public String LOC_STAT;
	public String LOC_G1;
	public String LOC_G2;
	public String LOC_G3;
	public String LOC_G4;
	public String LOC_G5;
	public String LOC_G6;
	public double LOC_X;
	public double LOC_Y;
	public double LOC_Z;
	public TB_LO_STOCK() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TB_LO_STOCK(String sTK_ID, String pROD_ID, String lOC_ID, String sTK_IN, String sTK_OUT, String sTK_QR,
			String lOC_STAT, String lOC_G1, String lOC_G2, String lOC_G3, String lOC_G4, String lOC_G5, String lOC_G6,
			double lOC_X, double lOC_Y, double lOC_Z) {
		super();
		STK_ID = sTK_ID;
		PROD_ID = pROD_ID;
		LOC_ID = lOC_ID;
		STK_IN = sTK_IN;
		STK_OUT = sTK_OUT;
		STK_QR = sTK_QR;
		LOC_STAT = lOC_STAT;
		LOC_G1 = lOC_G1;
		LOC_G2 = lOC_G2;
		LOC_G3 = lOC_G3;
		LOC_G4 = lOC_G4;
		LOC_G5 = lOC_G5;
		LOC_G6 = lOC_G6;
		LOC_X = lOC_X;
		LOC_Y = lOC_Y;
		LOC_Z = lOC_Z;
	}
	public String getSTK_ID() {
		return STK_ID;
	}
	public void setSTK_ID(String sTK_ID) {
		STK_ID = sTK_ID;
	}
	public String getPROD_ID() {
		return PROD_ID;
	}
	public void setPROD_ID(String pROD_ID) {
		PROD_ID = pROD_ID;
	}
	public String getLOC_ID() {
		return LOC_ID;
	}
	public void setLOC_ID(String lOC_ID) {
		LOC_ID = lOC_ID;
	}
	public String getSTK_IN() {
		return STK_IN;
	}
	public void setSTK_IN(String sTK_IN) {
		STK_IN = sTK_IN;
	}
	public String getSTK_OUT() {
		return STK_OUT;
	}
	public void setSTK_OUT(String sTK_OUT) {
		STK_OUT = sTK_OUT;
	}
	public String getSTK_QR() {
		return STK_QR;
	}
	public void setSTK_QR(String sTK_QR) {
		STK_QR = sTK_QR;
	}
	public String getLOC_STAT() {
		return LOC_STAT;
	}
	public void setLOC_STAT(String lOC_STAT) {
		LOC_STAT = lOC_STAT;
	}
	public String getLOC_G1() {
		return LOC_G1;
	}
	public void setLOC_G1(String lOC_G1) {
		LOC_G1 = lOC_G1;
	}
	public String getLOC_G2() {
		return LOC_G2;
	}
	public void setLOC_G2(String lOC_G2) {
		LOC_G2 = lOC_G2;
	}
	public String getLOC_G3() {
		return LOC_G3;
	}
	public void setLOC_G3(String lOC_G3) {
		LOC_G3 = lOC_G3;
	}
	public String getLOC_G4() {
		return LOC_G4;
	}
	public void setLOC_G4(String lOC_G4) {
		LOC_G4 = lOC_G4;
	}
	public String getLOC_G5() {
		return LOC_G5;
	}
	public void setLOC_G5(String lOC_G5) {
		LOC_G5 = lOC_G5;
	}
	public String getLOC_G6() {
		return LOC_G6;
	}
	public void setLOC_G6(String lOC_G6) {
		LOC_G6 = lOC_G6;
	}
	public double getLOC_X() {
		return LOC_X;
	}
	public void setLOC_X(double lOC_X) {
		LOC_X = lOC_X;
	}
	public double getLOC_Y() {
		return LOC_Y;
	}
	public void setLOC_Y(double lOC_Y) {
		LOC_Y = lOC_Y;
	}
	public double getLOC_Z() {
		return LOC_Z;
	}
	public void setLOC_Z(double lOC_Z) {
		LOC_Z = lOC_Z;
	}
	@Override
	public String toString() {
		return "TB_LO_STOCK [STK_ID=" + STK_ID + ", PROD_ID=" + PROD_ID + ", LOC_ID=" + LOC_ID + ", STK_IN=" + STK_IN
				+ ", STK_OUT=" + STK_OUT + ", STK_QR=" + STK_QR + ", LOC_STAT=" + LOC_STAT + ", LOC_G1=" + LOC_G1
				+ ", LOC_G2=" + LOC_G2 + ", LOC_G3=" + LOC_G3 + ", LOC_G4=" + LOC_G4 + ", LOC_G5=" + LOC_G5
				+ ", LOC_G6=" + LOC_G6 + ", LOC_X=" + LOC_X + ", LOC_Y=" + LOC_Y + ", LOC_Z=" + LOC_Z + "]";
	}
	
	

}
