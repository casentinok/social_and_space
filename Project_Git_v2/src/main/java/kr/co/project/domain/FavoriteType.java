package kr.co.project.domain;

public class FavoriteType{
	private String favorite_name;
	private int page;	
	private int perPageNum;
	private int startPage;
	
	public FavoriteType(){
		this.favorite_name = "%";
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

	
	public String getFavorite_name() {
		return favorite_name;
	}

	public void setFavorite_name(String favorite_name) {
		this.favorite_name = favorite_name;
	}

	@Override
	public String toString() {
		return "FavoriteType [favorite_name=" + favorite_name + ", page=" + page + ", perPageNum=" + perPageNum + "]";
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}
	
	
}
