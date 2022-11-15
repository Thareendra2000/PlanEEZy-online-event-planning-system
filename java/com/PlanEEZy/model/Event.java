//T.M.T.C.Tennakoon
//IT21171338

// Event class
package com.PlanEEZy.model;

public class Event {
	// data members
	private int eventID;
	private String Date;
	private String type;
	private int NoOfGuest;
	private int hostID;
	private int cusID;
	
	//defualt constructor
	public Event() {
		super();
	}
	
	//overload constructor with all parameters
	public Event(int eventID, String Date, String type, int noOfGuest, int hostID, int cusID) {
		super();
		this.Date = Date;
		this.eventID = eventID;
		this.type = type;
		NoOfGuest = noOfGuest;
		this.hostID = hostID;
		this.setCusID(cusID);
	}
	
	//constructor without eventID
	public Event(String Date, String type, int noOfGuest, int cusID) {
		super();
		this.Date = Date;
		this.type = type;
		NoOfGuest = noOfGuest;
		this.setCusID(cusID);
	}
	
	//getters and Setters 
	
	public Event(String date, String type, int noOfGuests) {
		Date	= date;
		this.type = type;
		this.NoOfGuest = noOfGuests;
	}

	public int getEventID() {
		return eventID;
	}

	public void setEventID(int eventID) {
		this.eventID = eventID;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getNoOfGuest() {
		return NoOfGuest;
	}

	public void setNoOfGuest(int noOfGuest) {
		NoOfGuest = noOfGuest;
	}

	public int getHostID() {
		return hostID;
	}

	public void setHostID(int hostID) {
		this.hostID = hostID;
	}
	
	public int getCusID() {
		return cusID;
	}

	public void setCusID(int cusID) {
		this.cusID = cusID;
	}
	//create only one object from event class using singleton pattern
	private static Event eobj;
	
	public static Event getInstance(String Date, String type, int noOfGuest, int cusID) {

	      // create object if it's not already created
	      if(eobj == null) {
	         eobj = new Event(Date, type, noOfGuest,cusID);
	      }

	       // returns the singleton object
	       return eobj;
	   }

}