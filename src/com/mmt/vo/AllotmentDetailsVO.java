package com.mmt.vo;

public class AllotmentDetailsVO
{
	private String berthNo;
	private String CoachNo;
	private String status;
	
	public String getBerthNo() {
		return berthNo;
	}
	public void setBerthNo(String berthNo) {
		this.berthNo = berthNo;
	}
	
	public String getCoachNo() {
		return CoachNo;
	}
	public void setCoachNo(String coachNo) {
		CoachNo = coachNo;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "AllotmentDetailsVO [berthNo=" + berthNo + ", CoachNo="
				+ CoachNo + ", status=" + status + "]";
	}
	
	
	
}
