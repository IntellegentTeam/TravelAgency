package com.mmt.util;


import java.net.URL;


import javax.xml.namespace.QName;
import javax.xml.rpc.Service;
import javax.xml.rpc.ServiceFactory;
import in.irctc.www.reservation.services.Reservation;

public class ReservationSOAPPortLocator
{
	@SuppressWarnings("unused")
	private final String ENDPOINT_NAME = "reservation";
	private static Reservation port;
	private final String WSDL_URL = "http://localhost:8080/TrainWeb/services/ReservationSOAPPort?wsdl";
	private final String URI = "http://www.irctc.in/reservation/services";
	private final String PORTNAME = "ReservationSOAPPort";
	
	public Reservation getReservationSOAPPortLocator() throws Exception
	{
		ServiceFactory serviceFactory = null;
		Service service = null;
			//Pass the Url value
		serviceFactory = ServiceFactory.newInstance();
		service =  serviceFactory.createService(new URL(WSDL_URL), new QName(URI, "reservationservice"));
		port=(Reservation) service.getPort(new QName(URI,PORTNAME), Reservation.class);
		return port;
	}
	
	/*private final String ENDPOINT_NAME = "reservation";
	private static Reservation port;
	
	public Reservation getReservationSOAPPortLocator() throws Exception
	{
		Properties props = null;
		String env = null;
		String endpointName = null;
		String url=null;
		
		if(port == null)
		{
			props = new Properties();
			props.load(this.getClass().getClassLoader().getResourceAsStream("endpoints.properties"));
			env=props.getProperty("endpoint.env");
			url = props.getProperty(ENDPOINT_NAME + "." + env);
			//Pass the Url value
			//Reservationservice reservationService =new ReservationserviceLocator(url, null)
	
			//port = reservationService.getReservationSOAPPort();
			
			return port;
		}
		return port;
	}*/
}