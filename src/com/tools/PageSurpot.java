package com.tools;

public class PageSurpot {
	private int pageIndex;
	private int pageSize;
	private int totalCount;
	private int totalPageCount;
	
	public int getPageIndex() {
		return pageIndex;
	}
	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPageCount() {
		if(totalCount%pageSize==0){
			totalPageCount=totalCount/pageSize;
		}else{
			totalPageCount=totalCount/pageSize+1;
		}
		return totalPageCount;
	}
}
