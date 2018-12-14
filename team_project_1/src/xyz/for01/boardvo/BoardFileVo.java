package xyz.for01.boardvo;

import java.sql.Timestamp;

public class BoardFileVo {
	private int file_idx;
	private int boardno;
	private String board_file;
	private	String origin_file;
	private Timestamp writedate;
	
	public BoardFileVo() {}

	public BoardFileVo(int file_idx, int boardno, String board_file, String origin_file, Timestamp writedate) {
		super();
		this.file_idx = file_idx;
		this.boardno = boardno;
		this.board_file = board_file;
		this.origin_file = origin_file;
		this.writedate = writedate;
	}

	public int getFile_idx() {
		return file_idx;
	}

	public void setFile_idx(int file_idx) {
		this.file_idx = file_idx;
	}

	public int getBoardno() {
		return boardno;
	}

	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}

	public String getBoard_file() {
		return board_file;
	}

	public void setBoard_file(String board_file) {
		this.board_file = board_file;
	}

	public String getOrigin_file() {
		return origin_file;
	}

	public void setOrigin_file(String origin_file) {
		this.origin_file = origin_file;
	}

	public Timestamp getWritedate() {
		return writedate;
	}

	public void setWritedate(Timestamp writedate) {
		this.writedate = writedate;
	}
	@Override
	public String toString() {
		return "BoardFileVo [file_idx=" + file_idx + ", boardno=" + boardno + ", board_file=" + board_file
				+ ", origin_file=" + origin_file + ", writedate=" + writedate + "]";
	}
}
