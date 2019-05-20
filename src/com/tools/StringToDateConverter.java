package com.tools;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.core.convert.converter.Converter;

public class StringToDateConverter implements Converter<String,Date> {
	private String datePanert;
	public StringToDateConverter(String datePanert){
		this.datePanert=datePanert;
	}
	
	public Date convert(String dt) {
		Date newDate=null;
		try {
			newDate=new SimpleDateFormat(datePanert).parse(dt);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return newDate;
	}
}
