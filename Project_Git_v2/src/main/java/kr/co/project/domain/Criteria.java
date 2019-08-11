package kr.co.project.domain;

public class Criteria {

	private int page;	
	private int perPageNum;
	private int startPage;
	//
	
	public Criteria(){
		this.setPage(1);
		this.setPerPageNum(9);
		
	}
	
	public void setPage(int page){
		
		if(page <= 0){
			this.page = 1;
			return;
		}
		this.startPage = (page-1)*this.perPageNum;
		
		this.page = page;
	}
	
	public void setPerPageNum(int perPageNum){
		
		if(perPageNum <= 0 || perPageNum > 100){
			this.perPageNum = 9;
			return;
		}
		
		this.perPageNum = perPageNum;
	}
	
	public int getPage() {
		return page;
	}	
	
	//method for MyBatis SQL Mapper - 
	public int getPageStart() {
		
		return (this.page -1)* perPageNum;
	}
	
	//method for MyBatis SQL Mapper 
	public int getPerPageNum(){
		
		return this.perPageNum;
	}

	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + ", startpage=" + startPage + "]";
	}

	public int getStartpage() {
		return startPage;
	}

	public void setStartpage(int startPage) {
		this.startPage = startPage;
	}
	
	
}


