package xyz.for01.controller.reservation;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

import xyz.for01.dao.ReservationDao;
import xyz.for01.membervo.MemberVo;
import xyz.for01.reservation.ReservationVo;

@WebServlet("/resListPage")
public class UserResJsonServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		MemberVo mVo = (MemberVo)session.getAttribute("loginUser");
		String resStat = req.getParameter("resStat");
		resStat = resStat.equals("") ? null : resStat;
		
		
		ReservationDao rDao = ReservationDao.getInstance();
		JsonArray resList;
		List<ReservationVo> rVo;
		
		
		if(resStat == null) {
			resList = new JsonArray();
			rVo = rDao.userResListCheckAll(mVo.getUserno());
			
		}else {
			resList = new JsonArray();
			rVo = rDao.userResListCheck(mVo.getUserno(), Integer.parseInt(resStat));
			
		}
		
		for(int j = 0; j<rVo.size(); j++) {
			
			JsonObject obj = new JsonObject();
			obj.addProperty("res_idx", rVo.get(j).getRes_idx());
			obj.addProperty("name", rVo.get(j).getName());
			obj.addProperty("phone", rVo.get(j).getPhone());
			obj.addProperty("res_start", String.valueOf(rVo.get(j).getRes_start()));
			obj.addProperty("res_end", String.valueOf(rVo.get(j).getRes_end()));
			obj.addProperty("hotelName", rVo.get(j).getHotelName());
			obj.addProperty("roomName", rVo.get(j).getRoomName());
			obj.addProperty("price", rVo.get(j).getPrice());
			
			java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");
			long calDate = (((new java.util.Date()).getTime())-(rVo.get(j).getResDate().getTime())/ ( 24*60*60*1000));
			if(calDate > 0) {
				obj.addProperty("resDate", String.valueOf(format.format(rVo.get(j).getResDate())));	
			}else {
				format = new java.text.SimpleDateFormat("hh:MM");
				obj.addProperty("resDate", String.valueOf(format.format(rVo.get(j).getResDate())));	
			}
			
			obj.addProperty("resStat", rVo.get(j).getResStat());
			
			resList.add(obj);
			
		}
		
		
		resp.setContentType("text/html; charset=UTF-8");
		req.setCharacterEncoding("utf-8");
		resp.getWriter().println(resList.toString());
		
	}
	
}
