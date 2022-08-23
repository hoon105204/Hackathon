package com.kurly.demo.dto;

public class APIdto {
	
	private String dvc_id;	// 장치 아이디
	private String wrk_id;	// 작업 아이디
	private String dtl_id;	// 세부작업 아이디
	private String stk_id;	// 재고품 아이디
	private String dtl_ord; // 세부작업 순서
	private String barcode; // 바코드

	public APIdto() {
		super();
		dtl_ord = "";
	}

	public APIdto(String dvc_id, String wrk_id, String dtl_id, String stk_id, String dtl_ord, String barcode) {
		super();
		this.dvc_id = dvc_id;
		this.wrk_id = wrk_id;
		this.dtl_id = dtl_id;
		this.stk_id = stk_id;
		this.dtl_ord = dtl_ord;
		this.barcode = barcode;
	}

	public String getDvc_id() {
		return dvc_id;
	}

	public void setDvc_id(String dvc_id) {
		this.dvc_id = dvc_id;
	}

	public String getWrk_id() {
		return wrk_id;
	}

	public void setWrk_id(String wrk_id) {
		this.wrk_id = wrk_id;
	}

	public String getDtl_id() {
		return dtl_id;
	}

	public void setDtl_id(String dtl_id) {
		this.dtl_id = dtl_id;
	}

	public String getStk_id() {
		return stk_id;
	}

	public void setStk_id(String stk_id) {
		this.stk_id = stk_id;
	}

	public String getDtl_ord() {
		return dtl_ord;
	}

	public void setDtl_ord(String dtl_ord) {
		this.dtl_ord = dtl_ord;
	}

	public String getBarcode() {
		return barcode;
	}

	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	@Override
	public String toString() {
		return "APIdto [dvc_id=" + dvc_id + ", wrk_id=" + wrk_id + ", dtl_id=" + dtl_id + ", stk_id=" + stk_id
				+ ", dtl_ord=" + dtl_ord + ", barcode=" + barcode + "]";
	}

	


	

}
