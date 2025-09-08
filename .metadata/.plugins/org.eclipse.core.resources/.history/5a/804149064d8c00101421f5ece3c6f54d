package insertservlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.dto;

@WebServlet("/insert")
public class insertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        request.setCharacterEncoding("utf-8");
	        String resvNo = request.getParameter("resv_no");
	        String custNo = request.getParameter("cust_no");
	        String resvDate = request.getParameter("resv_date");
	        String courtNo = request.getParameter("court_no");
	        
	        //dto는 참고만, 그냥 setAttribute 4번써서 보내도 됨.
	        dto resvDto = new dto(resvNo, custNo, resvDate, courtNo);

	        request.setAttribute("resvDto", resvDto);
	        request.getRequestDispatcher("action.jsp").forward(request, response);
	    }

	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        doPost(request, response);
	    }
}
