package com.mmt.delegate;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;

import com.mmt.servlet.BookTicketServlet;
import com.mmt.util.ReservationSOAPPortLocator;
import com.mmt.vo.AllotmentDetailsVO;
import com.mmt.vo.ReservationDetailsVO;
import com.mmt.vo.TicketDetailsVO;

import in.irctc.www.reservation.services.Reservation;
import in.irctc.www.reservation.types.Journey;
import in.irctc.www.reservation.types.Passenger;
import in.irctc.www.reservation.types.SeatAllotmentInfo;
import in.irctc.www.reservation.types.Ticket;

public class ReservationDelegate {
	private static final Logger LOG = Logger.getLogger(ReservationDelegate.class.getName());
	public TicketDetailsVO doReservation(ReservationDetailsVO reservationVO)
	{
	
		
		Ticket ticket=null;
			Journey journey=null;
			Passenger[] passengers=null;
			
			LOG.info("entering into doReservation ");
			//TicketDetailsVO tDetailsVO=null;
			ReservationSOAPPortLocator rSoapPortLocator=null;
			Reservation port=null;
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
			TicketDetailsVO tDetailsVO = null;
			try{
				LOG.info("journey obj is going to ceate");
				journey=new Journey();
				LOG.info(journey);
				// Set the journey value
				journey.setSource(reservationVO.getSource());
				LOG.info(reservationVO.getSource());
				journey.setDestination(reservationVO.getDestination());
				LOG.info(reservationVO.getDestination());
				journey.setJourney_date(sdf.parse(reservationVO.getJourneyDate()));
				LOG.info(reservationVO.getJourneyDate());
				
				// Set Passenger value
				//LOG.info("Res Delegate"+reservationVO.getPassengers().size());
				passengers =new Passenger[reservationVO.getPassengers().size()];
				for(int i=0; i<reservationVO.getPassengers().size(); i++){
					passengers[i]=new Passenger();
					LOG.info(" Rajan i :"+i);
					LOG.info("Passenger"+reservationVO.getPassengers().get(i).getFirstName());
					passengers[i].setFirstName(reservationVO.getPassengers().get(i).getFirstName());
					passengers[i].setLastName(reservationVO.getPassengers().get(i).getLastName());
					passengers[i].setAddress(reservationVO.getPassengers().get(i).getAddress());
					passengers[i].setGender(reservationVO.getPassengers().get(i).getGender());
					passengers[i].setAge(Integer.parseInt(reservationVO.getPassengers().get(i).getAge()));
					
				}
				rSoapPortLocator=new ReservationSOAPPortLocator();
				port=rSoapPortLocator.getReservationSOAPPortLocator();
				ticket=port.bookTicket(journey, passengers);
				
				tDetailsVO=new TicketDetailsVO();
				tDetailsVO.setPnr(ticket.getPnr());
				tDetailsVO.setAmount(String.valueOf(ticket.getAmount()));
				
				List<AllotmentDetailsVO> aDetailsVO=new ArrayList<AllotmentDetailsVO>();
				
				for(SeatAllotmentInfo seAllotmentInfo : ticket.getSeatAllotment()){
					AllotmentDetailsVO allotmentDetailsVO=new AllotmentDetailsVO();
					
					allotmentDetailsVO.setBerthNo(seAllotmentInfo.getBirthNo());
					allotmentDetailsVO.setCoachNo(seAllotmentInfo.getCoach());
					allotmentDetailsVO.setStatus(seAllotmentInfo.getStatus());
					aDetailsVO.add(allotmentDetailsVO);
					LOG.info("Resevation Deleggate"+aDetailsVO.size());
               
				} 
				
				tDetailsVO.setAllotments(aDetailsVO);
				LOG.info(tDetailsVO.getAllotments());
			}catch(Exception e){
				e.printStackTrace();
			}
	return tDetailsVO;
}
	}
