package xyz.for01.hotelvo;

public class RoomImgVo {
	
	private String image;
	private String origin_img;
	
	public RoomImgVo() { }

	
	public RoomImgVo(String image, String origin_img) {
		super();
		this.image = image;
		this.origin_img = origin_img;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getOrigin_img() {
		return origin_img;
	}

	public void setOrigin_img(String origin_img) {
		this.origin_img = origin_img;
	}
	
}
