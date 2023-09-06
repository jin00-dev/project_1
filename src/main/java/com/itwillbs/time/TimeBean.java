package com.itwillbs.time;

import java.sql.Date;
import java.sql.Time;

public class TimeBean {
	
	private Date Today;
	private Time In_time;
	private Time Out_time;
	
	public Date getToday() {
		return Today;
	}
	public void setToday(Date today) {
		Today = today;
	}
	public Time getIn_time() {
		return In_time;
	}
	public void setIn_time(Time in_time) {
		In_time = in_time;
	}
	public Time getOut_time() {
		return Out_time;
	}
	public void setOut_time(Time out_time) {
		Out_time = out_time;
	}
	
	@Override
	public String toString() {
		return "TimeBean [Today=" + Today + ", In_time=" + In_time + ", Out_time=" + Out_time + "]";
	}
	
}
