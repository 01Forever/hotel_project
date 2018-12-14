package xyz.for01.boardvo;

public class Paging {
	
	private int recent; // ����������
    private int totalPage; //�� �Խù�
    private int pagePerView; // ���� �������� ���ù� ����
    private int pageCount; // �������� 
    private int recentFirstPage; // �Ʒ� ����¡ ù ����
    private int recentLastPage; // �Ʒ� ����¡ ������ ����
    private int recentLastPPV; // ����¡ �ƾ� ������ ���� 
    private int start; // ���� ���������� ù ������ �ѹ� 
	private int end; // ���� ���������� ������ ������ �ѹ�
	private boolean prev;
	private int prevNum;
	private boolean next;
	private int nextNum;
	

	public Paging() { }
	
	public Paging(int recent, int totalPage, int pagePerView, int pageCount, int recentFirstPage, int recentLastPage,
			int recentLastPPV, int start, int end, boolean prev, int prevNum, boolean next, int nextNum) {
		super();
		this.recent = recent;
		this.totalPage = totalPage;
		this.pagePerView = pagePerView;
		this.pageCount = pageCount;
		this.recentFirstPage = recentFirstPage;
		this.recentLastPage = recentLastPage;
		this.recentLastPPV = recentLastPPV;
		this.start = start;
		this.end = end;
		this.prev = prev;
		this.prevNum = prevNum;
		this.next = next;
		this.nextNum = nextNum;
	}

	public int getRecentFirstPage() {
		return recentFirstPage;
	}
	public void setRecentFirstPage(int recentFirstPage) {
		this.recentFirstPage = recentFirstPage;
	
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getRecent() {
		return recent;
	}
	public void setRecent(int recent) {
		this.recent = recent;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
		page();
	}
	public int getPagePerView() {
		return pagePerView;
	}
	public void setPagePerView(int pagePerView) {
		this.pagePerView = pagePerView;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getRecentLastPage() {
		return recentLastPage;
	}
	public void setRecentLastPage(int recentLastPage) {
		this.recentLastPage = recentLastPage;
	}
	public int getRecentLastPPV() {
		return recentLastPPV;
	}
	public void setRecentLastPPV(int recentLastPPV) {
		this.recentLastPPV = recentLastPPV;
	}
	
	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public int getPrevNum() {
		return prevNum;
	}

	public void setPrevNum(int prevNum) {
		this.prevNum = prevNum;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getNextNum() {
		return nextNum;
	}

	public void setNextNum(int nextNum) {
		this.nextNum = nextNum;
	}

	public void page() {
		// �� ������ ����
		pageCount = (totalPage - 1) / pagePerView +1;
		recentLastPage = recent + (recentLastPPV-((recent-1) % recentLastPPV) -1);
		// ���� �ٲٱ� 
		recentFirstPage = recentLastPage - recentLastPPV +1;
		start = pagePerView * (recent-1)+1;
		end = pagePerView * recent;	

		// �Խ� �� ��ü ���� ���� ���
        if (this.totalPage == 0) return; 
        //���� ������ ���� ������������ �Ѿ����ÿ��� ������ ������������ ���� �������� �ִ´�
        if (pageCount < recent) { recent = pageCount; }
        // ����¡ ù ��ȣ�� 10���� �Ʒ��϶� prev�� Ʈ��
        if (recentFirstPage > 10) {
        	prevNum = recentFirstPage - 10;
        	prev = true;
        } else {
        	prev = false;
		}
        
        
        if (recentLastPage < pageCount) {
        	nextNum = recentFirstPage + 10;
        	next = true;
        } else {
        	next = false;
		}
        
        if (recentLastPage > pageCount ) {recentLastPage = pageCount;}
        
        
	}
	@Override
	public String toString() {
		return "Paging [recent=" + recent + ", totalPage=" + totalPage + ", pagePerView=" + pagePerView + ", pageCount="
				+ pageCount + ", lastPage=" + ", recentFirstPage=" + recentFirstPage + ", recentLastPage="
				+ recentLastPage + ", recentLastPPV=" + recentLastPPV + ", start=" + start + ", end=" + end + "]";
	}
}