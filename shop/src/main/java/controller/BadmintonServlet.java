package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BadmintonDao;
import model.ResvationDTO;

@WebServlet("/insert")
public class BadmintonServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        request.setCharacterEncoding("utf-8");
	        String giftnim = request.getParameter("giftnim");
	        String custNo = request.getParameter("cust_no");
	        String pay = request.getParameter("pay");
	        String requests = request.getParameter("requests");
	        
	        BadmintonDao badmintonDao = new BadmintonDao();
	        ResvationDTO resvDto = new ResvationDTO(giftnim, custNo, pay, requests);
	        badmintonDao.insertReservation(resvDto);
	        response.sendRedirect("insert.jsp");
//	        ResvationDTO resvDto = new ResvationDTO(resvNo, custNo, resvDate, courtNo);

//	        request.setAttribute("resvDto", resvDto);
//	        request.getRequestDispatcher("result.jsp").forward(request, response);
	    }

	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        doPost(request, response);
	    }
}