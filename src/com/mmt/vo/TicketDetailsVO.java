package com.mmt.vo;

import java.util.List;

public class TicketDetailsVO
{
	private String pnr;
	private String amount;
	private List<AllotmentDetailsVO> allotments;
	
	
	
	/**
	 * @return the pnr
	 */
	public String getPnr() {
		return pnr;
	}
	/**
	 * @param pnr the pnr to set
	 */
	public void setPnr(String pnr) {
		this.pnr = pnr;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	/**
	 * @return the allotments
	 */
	public List<AllotmentDetailsVO> getAllotments() {
		return allotments;
	}
	/**
	 * @param allotments the allotments to set
	 */
	public void setAllotments(List<AllotmentDetailsVO> allotments) {
		this.allotments = allotments;
	}

	
	
}
