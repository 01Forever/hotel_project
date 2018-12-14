package xyz.for01.controller.eventboard;

import java.sql.Timestamp;

public class EventBoardVo {
	private int boardno;
	private String title;
	private String content;
	private String pictureone;
	private String originone;
	private String picturetwo;
	private String origintwo;
	private Timestamp writedate;
	private Timestamp startdate;
	private Timestamp enddate;
	
	public EventBoardVo() { }

	public EventBoardVo(int boardno, String title, String content, String pictureone, String originone,
			String picturetwo, String origintwo, Timestamp writedate, Timestamp startdate, Timestamp enddate) {
		super();
		this.boardno = boardno;
		this.title = title;
		this.content = content;
		this.pictureone = pictureone;
		this.originone = originone;
		this.picturetwo = picturetwo;
		this.origintwo = origintwo;
		this.writedate = writedate;
		this.startdate = startdate;
		this.enddate = enddate;
	}

	public int getBoardno() {
		return boardno;
	}

	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPictureone() {
		return pictureone;
	}

	public void setPictureone(String pictureone) {
		this.pictureone = pictureone;
	}

	public String getOriginone() {
		return originone;
	}

	public void setOriginone(String originone) {
		this.originone = originone;
	}

	public String getPicturetwo() {
		return picturetwo;
	}

	public void setPicturetwo(String picturetwo) {
		this.picturetwo = picturetwo;
	}

	public String getOrigintwo() {
		return origintwo;
	}

	public void setOrigintwo(String origintwo) {
		this.origintwo = origintwo;
	}

	public Timestamp getWritedate() {
		return writedate;
	}

	public void setWritedate(Timestamp writedate) {
		this.writedate = writedate;
	}

	public Timestamp getStartdate() {
		return startdate;
	}

	public void setStartdate(Timestamp startdate) {
		this.startdate = startdate;
	}

	public Timestamp getEnddate() {
		return enddate;
	}

	public void setEnddate(Timestamp enddate) {
		this.enddate = enddate;
	}
	@Override
	public String toString() {
		return "EventBoardVo [boardno=" + boardno + ", title=" + title + ", content=" + content + ", pictureone="
				+ pictureone + ", originone=" + originone + ", picturetwo=" + picturetwo + ", origintwo=" + origintwo
				+ ", writedate=" + writedate + ", startdate=" + startdate + ", enddate=" + enddate + "]";
	}
}
