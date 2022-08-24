package com.kurly.demo.dto;

/**
 * @author 1600X
 *
 */
public class TB_LO_LOCATION {
	private String LOC_ID;
	private String LOC_X;
	private String LOC_Y;
	private String LOC_Z;
	private String LOC_STAT;
	private String LOC_G1;
	private String LOC_G2;
	private String LOC_G3;
	private String LOC_G4;
	private String LOC_G5;
	private String LOC_G6;
	private String LOC_G7;
	private String LEFT_LOC_ID;
	
	public TB_LO_LOCATION() {
		super();
	}

	public TB_LO_LOCATION(String lOC_ID, String lOC_X, String lOC_Y, String lOC_Z, String lOC_STAT, String lOC_G1,
			String lOC_G2, String lOC_G3, String lOC_G4, String lOC_G5, String lOC_G6, String lOC_G7) {
		super();
		LOC_ID = lOC_ID;
		LOC_X = lOC_X;
		LOC_Y = lOC_Y;
		LOC_Z = lOC_Z;
		LOC_STAT = lOC_STAT;
		LOC_G1 = lOC_G1;
		LOC_G2 = lOC_G2;
		LOC_G3 = lOC_G3;
		LOC_G4 = lOC_G4;
		LOC_G5 = lOC_G5;
		LOC_G6 = lOC_G6;
		LOC_G7 = lOC_G7;
	}

	@Override
	public String toString() {
		return "TB_LO_LOCATION [LOC_ID=" + LOC_ID + ", LOC_X=" + LOC_X + ", LOC_Y=" + LOC_Y + ", LOC_Z=" + LOC_Z
				+ ", LOC_STAT=" + LOC_STAT + ", LOC_G1=" + LOC_G1 + ", LOC_G2=" + LOC_G2 + ", LOC_G3=" + LOC_G3
				+ ", LOC_G4=" + LOC_G4 + ", LOC_G5=" + LOC_G5 + ", LOC_G6=" + LOC_G6 + ", LOC_G7=" + LOC_G7 + "]";
	}

	public String getLOC_ID() {
		return LOC_ID;
	}

	public void setLOC_ID(String lOC_ID) {
		LOC_ID = lOC_ID;
	}

	public String getLOC_X() {
		return LOC_X;
	}

	public void setLOC_X(String lOC_X) {
		LOC_X = lOC_X;
	}

	public String getLOC_Y() {
		return LOC_Y;
	}

	public void setLOC_Y(String lOC_Y) {
		LOC_Y = lOC_Y;
	}

	public String getLOC_Z() {
		return LOC_Z;
	}

	public void setLOC_Z(String lOC_Z) {
		LOC_Z = lOC_Z;
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

	public String getLOC_G7() {
		return LOC_G7;
	}

	public void setLOC_G7(String lOC_G7) {
		LOC_G7 = lOC_G7;
	}

	public String getLEFT_LOC_ID() {
		return LEFT_LOC_ID;
	}

}
