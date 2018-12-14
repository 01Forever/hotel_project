package xyz.for01.controller.hotel;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import xyz.for01.dao.HotelDAO;
import xyz.for01.hotelvo.HotelReviewVo;
import xyz.for01.hotelvo.ReviewImgVo;

@WebServlet("/reviewBoard")
public class ReviewListServlet extends HttpServlet {

	//hotelNo를 호출해서
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String hotelNo = req.getParameter("hotelNo");
		HotelDAO hDao = HotelDAO.getInstance();
		List<HotelReviewVo> hVo = hDao.selectReview(Integer.parseInt(hotelNo));
		
		JsonArray Reviews = new JsonArray();
		
		for(int i = 0; i < hVo.size(); i++) {
			JsonObject obj = new JsonObject();
			JsonArray reviewImgs = new JsonArray();
			// 호텔DAO에서 호출한 hotelNo를  받아와  리스트를 JSON배열로 바꾸어 AJAX로 전송한다.
			obj.addProperty("boardNo", hVo.get(i).getBoardNo());
			obj.addProperty("title", hVo.get(i).getTitle());
			obj.addProperty("content", hVo.get(i).getContent());
			obj.addProperty("roomName", hVo.get(i).getRoomName());
			obj.addProperty("nic", hVo.get(i).getUserNo());
			obj.addProperty("star", hVo.get(i).getStar());
			java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");
			long calDate = (((new java.util.Date()).getTime())-(hVo.get(i).getWriteDate().getTime())/ ( 24*60*60*1000));
			if(calDate > 0) {
				obj.addProperty("writeDate", String.valueOf(format.format(hVo.get(i).getWriteDate())));	
			}else {
				format = new java.text.SimpleDateFormat("hh:MM");
				obj.addProperty("writeDate", String.valueOf(format.format(hVo.get(i).getWriteDate())));	
			}
			
			for(int j=0; j<hVo.get(i).getReviewImgs().size(); j++) {
				ReviewImgVo rImgVo = hVo.get(i).getReviewImgs().get(j);
				JsonObject imgObj = new JsonObject();
				imgObj.addProperty("image", rImgVo.getImage());
				imgObj.addProperty("origin_image", rImgVo.getOrigin_img());
				reviewImgs.add(imgObj);
			}
			
			obj.add("reviewImgs", reviewImgs);
			Reviews.add(obj);
			
		}
		
		resp.setContentType("text/html; charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		resp.getWriter().println(Reviews.toString());
	}
	
}
