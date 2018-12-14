package xyz.for01.hotelvo;

import java.sql.Date;
import java.util.List;

public class HotelVo {
	private int hotelNo;
	private int admin;
	private String hotelName;
	private String address;
	private String city;
	private String borugh;
	private String wtmX;
	private String wtmY;
	private int grade;
	private int star;
	private int total;
	private String descript;
	private int originNo;
	private Date writeDate;
	private String price;
	private Date res_Start;
	private Date res_End;
	
	private List<HotelImgVo> hotelImgs;
	private List<RoomVo> rooms;
	private List<HotelReviewVo> reviews;
	

	public HotelVo() { }

	public HotelVo(int hotelNo, String hotelName, String address, String wtmX, String wtmY, int star, int total,
			List<HotelImgVo> hotelImgs) {
		super();
		this.hotelNo = hotelNo;
		this.hotelName = hotelName;
		this.address = address;
		this.wtmX = wtmX;
		this.wtmY = wtmY;
		this.total = total;
		this.star = star;
		this.hotelImgs = hotelImgs;
	}
	
	public HotelVo(int hotelNo, String hotelName, String address, int star, int total, String wtmX, String wtmY, List<HotelImgVo> hotelImgs,
			List<RoomVo> rooms, List<HotelReviewVo> reviews) {
		super();
		this.hotelNo = hotelNo;
		this.hotelName = hotelName;
		this.address = address;
		this.star = star;
		this.total = total;
		this.wtmX = wtmX;
		this.wtmY = wtmY;
		this.hotelImgs = hotelImgs;
		this.rooms = rooms;
		this.reviews = reviews;
	}

	public HotelVo(int hotelNo, int admin, String hotelName, String address, String city, String borugh, String wtmX,
			String wtmY, int grade, String descript, int originNo, Date writeDate, List<HotelImgVo> hotelImgs,
			List<RoomVo> rooms) {
		super();
		this.hotelNo = hotelNo;
		this.admin = admin;
		this.hotelName = hotelName;
		this.address = address;
		this.city = city;
		this.borugh = borugh;
		this.wtmX = wtmX;
		this.wtmY = wtmY;
		this.grade = grade;
		this.descript = descript;
		this.originNo = originNo;
		this.writeDate = writeDate;
		this.hotelImgs = hotelImgs;
		this.rooms = rooms;
	}

	public HotelVo(int hotelNo, int admin, String hotelName, String address, String city, String borugh, String wtmX,
			String wtmY, int grade, int star, String descript, int originNo, Date writeDate, String price,
			Date res_Start, Date res_End, List<HotelImgVo> hotelImgs, List<RoomVo> rooms, List<HotelReviewVo> reviews) {
		super();
		this.hotelNo = hotelNo;
		this.admin = admin;
		this.hotelName = hotelName;
		this.address = address;
		this.city = city;
		this.borugh = borugh;
		this.wtmX = wtmX;
		this.wtmY = wtmY;
		this.grade = grade;
		this.star = star;
		this.descript = descript;
		this.originNo = originNo;
		this.writeDate = writeDate;
		this.price = price;
		this.res_Start = res_Start;
		this.res_End = res_End;
		this.hotelImgs = hotelImgs;
		this.rooms = rooms;
		this.reviews = reviews;
	}

	public int getHotelNo() {
		return hotelNo;
	}

	public void setHotelNo(int hotelNo) {
		this.hotelNo = hotelNo;
	}

	public int getAdmin() {
		return admin;
	}

	public void setAdmin(int admin) {
		this.admin = admin;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getBorugh() {
		return borugh;
	}

	public void setBorugh(String borugh) {
		this.borugh = borugh;
	}

	public int getStar() {
		return star;
	}
	
	public void setStar(int star) {
		this.star = star;
	}
	
	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getWtmX() {
		return wtmX;
	}

	public void setWtmX(String wtmX) {
		this.wtmX = wtmX;
	}

	public String getWtmY() {
		return wtmY;
	}

	public void setWtmY(String wtmY) {
		this.wtmY = wtmY;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}

	public String getDescript() {
		return descript;
	}

	public void setDescript(String descript) {
		this.descript = descript;
	}

	public int getOriginNo() {
		return originNo;
	}

	public void setOriginNo(int originNo) {
		this.originNo = originNo;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Date getRes_Start() {
		return res_Start;
	}

	public void setRes_Start(Date res_Start) {
		this.res_Start = res_Start;
	}

	public Date getRes_End() {
		return res_End;
	}

	public void setRes_End(Date res_End) {
		this.res_End = res_End;
	}

	public List<HotelImgVo> getHotelImgs() {
		return hotelImgs;
	}

	public void setHotelImgs(List<HotelImgVo> hotelImgs) {
		this.hotelImgs = hotelImgs;
	}

	public List<RoomVo> getRooms() {
		return rooms;
	}

	public void setRooms(List<RoomVo> rooms) {
		this.rooms = rooms;
	}


	public List<HotelReviewVo> getReviews() {
		return reviews;
	}

	public void setReviews(List<HotelReviewVo> reviews) {
		this.reviews = reviews;
	}

	@Override
	public String toString() {
		return "HotelVo [hotelNo=" + hotelNo + ", admin=" + admin + ", hotelName=" + hotelName + ", address=" + address
				+ ", city=" + city + ", borugh=" + borugh + ", wtmX=" + wtmX + ", wtmY=" + wtmY + ", grade=" + grade
				+ ", star=" + star + ", total=" + total + ", descript=" + descript + ", originNo=" + originNo
				+ ", writeDate=" + writeDate + ", price=" + price + ", res_Start=" + res_Start + ", res_End=" + res_End
				+ ", hotelImgs=" + hotelImgs + ", rooms=" + rooms + ", reviews=" + reviews + "]";
	}
	
}
