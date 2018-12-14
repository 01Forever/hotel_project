package xyz.for01.dao;

public class HotelMasterDao {
	public HotelMasterDao() {}
	
	private static HotelMasterDao instance = new HotelMasterDao();
	
	private static HotelMasterDao getInstance() { return instance; }
	
	// 결제 대기 중인 상태의 예약만 가져오기
	
}
