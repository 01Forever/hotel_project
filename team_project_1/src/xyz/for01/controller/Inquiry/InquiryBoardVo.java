package xyz.for01.controller.Inquiry;

import java.sql.Timestamp;

public class InquiryBoardVo {
	private int boardno;
	private String category;
	private String emailid;
	private String title;
	private String content;
	private String phone;
	private Timestamp writedate;
	
	public InquiryBoardVo() {}

	public InquiryBoardVo(int boardno, String category, String emailid, String title, String content, String phone,
			Timestamp writedate) {
		super();
		this.boardno = boardno;
		this.category = category;
		this.emailid = emailid;
		this.title = title;
		this.content = content;
		this.phone = phone;
		this.writedate = writedate;
	}

	public int getBoardno() {
		return boardno;
	}

	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getEmailid() {
		return emailid;
	}

	public void setEmailid(String emailid) {
		this.emailid = emailid;
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

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Timestamp getWritedate() {
		return writedate;
	}

	public void setWritedate(Timestamp writedate) {
		this.writedate = writedate;
	}

	@Override
	public String toString() {
		return "Inquiry_BoardVo [boardno=" + boardno + ", category=" + category + ", emailid=" + emailid + ", title="
				+ title + ", content=" + content + ", phone=" + phone + ", writedate=" + writedate + "]";
	}
}
