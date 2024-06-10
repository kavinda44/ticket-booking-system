package PDSACW;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Cal")
public class Cal extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cusName = request.getParameter("cusName"); 
		String phoneNo = request.getParameter("phoneNo");
		String email = request.getParameter("email");
		
		HttpSession session = request.getSession();
		
		session.setAttribute("cusName", cusName);
		session.setAttribute("phoneNo", phoneNo);
		session.setAttribute("email", email);
		
		int rows = (int)session.getAttribute("rows");
		int columns = (int)session.getAttribute("columns");
		
		String[][] seats = new String[rows][columns];
		String seatID;
		
		int standardCount = 0;
		int odcCount = 0;
		int balconyCount = 0;
		
		double standardPrice = 100.00;
		double odcPrice = 250.00;
		double balconyPrice = 600.00;
		
		double totalCost = 0.00;
		
		for (int i = 0; i < rows; i++) {
			for (int j = 0; j < columns; j++) {
				seatID = Integer.toString(i)+Integer.toString(j);
				seats[i][j] = request.getParameter(seatID);
				session.setAttribute("seats[" + i + "][" + j + "]", seats[i][j]);
				
				if(seats[i][j]!=null) {
					if(i<2) {//0,1
						standardCount++;
					}else if(i<4) {//2,3
						odcCount++;
					}else if(i<6) {//4,5
						balconyCount++;
					}
				}
			}
		}
		
		totalCost = (standardCount * standardPrice) + (odcCount * odcPrice) + (balconyCount * balconyPrice);
		
		session.setAttribute("totalCost", totalCost);
		RequestDispatcher rd = request.getRequestDispatcher("Display.jsp");
		rd.forward(request,response);
	}}
		
	