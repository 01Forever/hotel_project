package xyz.for01.controller.hotel;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import xyz.for01.dao.HotelDAO;
import xyz.for01.hotelvo.RoomImgVo;
import xyz.for01.hotelvo.RoomVo;

@WebServlet("/roomsPage")
public class RoomListServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String hotelNo = req.getParameter("hotelNo");
		String res_Start = req.getParameter("res_Start");
		
		HotelDAO hDao = HotelDAO.getInstance();
		List<RoomVo> rVo = hDao.selectRoomList(res_Start,Integer.parseInt(hotelNo));
		
		JsonArray rooms = new JsonArray();
		
		for(int i = 0; i<rVo.size(); i++) {
			
			JsonObject obj = new JsonObject();
			JsonArray roomImgs = new JsonArray();
			obj.addProperty("roomNo", rVo.get(i).getRoomNo());
			obj.addProperty("roomName", rVo.get(i).getRoomName());
			obj.addProperty("price", rVo.get(i).getPrice());
			obj.addProperty("content", rVo.get(i).getContent());
			obj.addProperty("count", rVo.get(i).getResCount());
			obj.addProperty("maxRoom", rVo.get(i).getMaxRoom());
			
			for(int j=0; j<rVo.get(i).getImgs().size(); j++) {
				RoomImgVo rImgVo = rVo.get(i).getImgs().get(j);
				JsonObject imgObj = new JsonObject();
				imgObj.addProperty("image", rImgVo.getImage());
				imgObj.addProperty("origin_image", rImgVo.getOrigin_img());
				roomImgs.add(imgObj);
			} // for(j) End;
			
			obj.add("roomImgs", roomImgs);
			rooms.add(obj);
			
		} // for(i) End;
		
		resp.setContentType("text/html; charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		resp.getWriter().println(rooms.toString());
		
		
	} // doGet() End;
	
}
