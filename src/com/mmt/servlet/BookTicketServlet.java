package com.mmt.servlet;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Level;
import org.apache.log4j.Logger;

import com.mmt.delegate.ReservationDelegate;
import com.mmt.vo.AllotmentDetailsVO;
import com.mmt.vo.PassengerDetailsVO;
import com.mmt.vo.ReservationDetailsVO;
import com.mmt.vo.TicketDetailsVO;

public class BookTicketServlet extends HttpServlet
{
	private final Logger LOG = Logger.getLogger(this.getClass().getPackage().getName());
	@SuppressWarnings("null")
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		LOG.info(Level.INFO+"This is Servlet Page>");
		LOG.info("This is Servlet Page>>>>");
		ReservationDelegate rDelegate=null;
		ReservationDetailsVO rDetailsVO = null;
		PassengerDetailsVO pDetailsVO =null;
		List<PassengerDetailsVO> passengers=null;
		rDetailsVO=new ReservationDetailsVO();
		rDetailsVO.setSource(request.getParameter("source"));
		rDetailsVO.setDestination(request.getParameter("destination"));
		rDetailsVO.setJourneyDate(request.getParameter("journeyDate"));
		//LOG.info("This is Servlet Page>>>>"+request.getParameter("journeyDate"));
		String[] firstName=request.getParameterValues("firstName");
		String[] lastName=request.getParameterValues("lastName");
		String[] address=request.getParameterValues("address");
		String[] gender=request.getParameterValues("gender");
		String[] age=request.getParameterValues("age");
		
		LOG.info(Level.INFO+"This is Servlet Page>>>>"+request.getParameterValues("age"));
		LOG.info("firstName"+firstName);
		passengers=new ArrayList<PassengerDetailsVO>();
		

		LOG.info("Pass Size"+passengers.size());
	for(int i=0; i<=passengers.size();i++){
		pDetailsVO=new PassengerDetailsVO();
			if(firstName[i]!=null && firstName[i].trim().length()>0){
			LOG.info("firstName"+firstName[i]);
			pDetailsVO.setFirstName(firstName[i]);
			pDetailsVO.setLastName(lastName[i]);
			pDetailsVO.setAddress(address[i]);
			LOG.info("Servlet Page Address"+pDetailsVO.getAddress());
			pDetailsVO.setGender(gender[i]);
			pDetailsVO.setAge(age[i]);
			
			passengers.add(pDetailsVO);
			rDetailsVO.setPassengers(passengers);	
		}
			
			//LOG.info(">>>"+rDetailsVO.getPassengers().get(i).getAddress());
	}
		LOG.info("passengers"+passengers.size());
		rDelegate=new ReservationDelegate();
		TicketDetailsVO tDetailsVO=rDelegate.doReservation(rDetailsVO);
		request.setAttribute("ticket", tDetailsVO);
		request.setAttribute("pass", rDetailsVO);
		LOG.info("Pnr:"+tDetailsVO.getPnr());
		LOG.info("Amount:"+tDetailsVO.getAmount());
		LOG.info("Seat:"+tDetailsVO.getAllotments());
	//	LOG.info("Name"+rDetailsVO.getPassengers().get(0).getFirstName()+" "+passengers.get(0).getLastName());
		LOG.info(Level.INFO);
	
		List<AllotmentDetailsVO> list = tDetailsVO.getAllotments();
		LOG.info("Size "+list.size());
		for(AllotmentDetailsVO ad : list){
			LOG.info(ad);
		}
		
		request.getRequestDispatcher("ticket.jsp").forward(request, response);
		
	}
}
