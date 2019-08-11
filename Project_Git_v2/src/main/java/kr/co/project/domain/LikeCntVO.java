package kr.co.project.domain;

public class LikeCntVO {
	private int likecnt;

	public int getLikecnt() {
		return likecnt;
	}

	public void setLikecnt(int likecnt) {
		this.likecnt = likecnt;
	}

	@Override
	public String toString() {
		return "LikeCntVO [likecnt=" + likecnt + "]";
	}
	
}
