package webmail.controller;

import groovy.json.JsonBuilder;

import javax.json.Json;

import java.rmi.server.UID;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.cassandra.thrift.cassandraConstants;
import org.directwebremoting.json.types.JsonObject;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import scala.annotation.meta.getter;
import webmail.webservice.client.CalendarClient;
import webmail.webservice.client.FileClient;
import webmail.webservice.client.FolderClient;
import webmail.wsdl.CreateCalendarResponse;
import webmail.wsdl.CreateEventResponse;
import webmail.wsdl.CreateFileResponse;
import webmail.wsdl.EditFileResponse;
import webmail.wsdl.EventBean;
import webmail.wsdl.GetFileByPathResponse;
import webmail.wsdl.GetFileResponse;

@Controller
public class CalendarController {

	@Autowired
	private CalendarClient calendarclient;
	@Autowired
	private FileClient fileClient;

	@RequestMapping("/createCalendar")
	@ResponseBody
	public String createCalendar(@RequestParam String calendarid,HttpServletRequest request,
			String calcolor) {
				System.out.println("jkxdfhb");
		CreateCalendarResponse res = calendarclient.createCalendar(calendarid,
				calcolor);
		calcolor=calcolor.replace("#","");
		String filename=calendarid+"`"+calcolor+"`"+"_"+(UUID.randomUUID())+".ics";
		System.out.println(filename);

		CreateFileResponse cr = fileClient.createFile(filename,
				"/sanjay@avi-oil.com/calendar", "sanjay@avi-oil.com", "", "",
				res.getResponse());
		System.out.println(cr.isSuccess());
		return cr.getFile().getFileName();
	}
/*
	@RequestMapping("/createEvent")
	@ResponseBody
	public String createEvent(HttpServletRequest request) {
		System.out.println("event properties");
		System.out.println(request.getParameter("dtax"));
		//System.out.println(datax);
		return "true";

	}*/

	@RequestMapping(value="/createEvent", produces="application/json")
	@ResponseBody
	public String createEvent(@ModelAttribute(value = "eventform") EventBean eventbean
			) {
		System.out.println("event properties");
		
	/*	SimpleDateFormat sdf=new SimpleDateFormat("yyMMddTHHmmssZ");
		
		sdf.format(new Date());*/
		System.out.println(eventbean.getUntil());
		System.out.println(eventbean.getStartdate());
		eventbean.setEnddate(eventbean.getEnddate().replace("-", ""));
		eventbean.setStartdate(eventbean.getStartdate().replace("-", ""));
		if(eventbean.getUntil()!=null)
			eventbean.setUntil(eventbean.getUntil().replace("-", ""));
		
		GetFileByPathResponse fileByPath=fileClient.getFileByPath("/sanjay@avi-oil.com/calendar/"+eventbean.getCalendar(),"sanjay@avi-oil.com");
	       webmail.wsdl.File fileNode=fileByPath.getFile();
	       CreateEventResponse res = calendarclient.createEvent(eventbean,fileNode.getFileContent());
	       EditFileResponse res1 = fileClient.editEvent(fileNode.getFilePath(),res.getResponse(),"sanjay@avi-oil.com");
		//SimpleDateFormat simpledateformat=new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		eventbean.setStartdate(eventbean.getStartdate().substring(0, 4)+"-"+eventbean.getStartdate().substring(4, 6)+"-"+eventbean.getStartdate().substring(6, 8));
		eventbean.setEnddate(eventbean.getEnddate().substring(0, 4)+"-"+eventbean.getEnddate().substring(4, 6)+"-"+eventbean.getEnddate().substring(6, 8));
		
		JSONObject obj = new JSONObject();
	       obj.put("summary", eventbean.getSummary());
		      /* obj.put("start",simpledateformat.format(new Date(eventbean.getStartdate())));
		       obj.put("end",simpledateformat.format(new Date(eventbean.getEnddate())));*/
	       obj.put("start",eventbean.getStartdate());    
	       obj.put("end",eventbean.getEnddate());
		       obj.put("name",eventbean.getCalendar());
		   obj.put("id",res.getEventuid());
		   obj.put("c",eventbean.getUid());   
		       JSONObject rdates = new JSONObject();
		       if(res.getRepeatdates()!=null)
		       {
		        String [] repeat=res.getRepeatdates().split(",");
				for(int j=0;j<repeat.length;j++)
				{
					    repeat[j]=repeat[j].substring(0, 4)+"-"+repeat[j].substring(4, 6)+"-"+repeat[j].substring(6, 8);
						//eventbean.getRepeatdatetimelist().getDateTime().add(repeat[j]);
					    rdates.put(j,repeat[j]);
					    System.out.println(repeat[j]);
				}
		       }
				obj.put("repeatdates",rdates);
		     return obj.toJSONString();

	}
	
	@RequestMapping(value="/geteventdetails", produces="application/json")
	@ResponseBody
	public String geteventdetails(@RequestParam String uid,String calendarname,ModelMap map, HttpServletResponse response)
	{
		GetFileByPathResponse fileByPath=fileClient.getFileByPath("/sanjay@avi-oil.com/calendar/"+calendarname,"sanjay@avi-oil.com");
	       webmail.wsdl.File fileNode=fileByPath.getFile();
	      
	 	 /*  	GetFileResponse fileResponse = fileClient.getFileRequest(
				"/sanjay@avi-oil.com/calendar", "sanjay@avi-oil.com");
		List<webmail.wsdl.File> fileList = fileResponse
				.getGetFilesByParentFile().getFileListResult().getFileList();
		map.addAttribute("calendarfilelist", fileList);*/ 
	       EventBean res = calendarclient.geteventdetails(uid,calendarname,fileNode.getFileContent()).getEventBean();
	    /*map.addAttribute("eventDetail", res);*/
	       String startdate=res.getStartdate().replace("T", "");
	       startdate=startdate.substring(0, 4)+"-"+startdate.substring(4, 6)+"-"+startdate.substring(6, 8);
	       String enddate=res.getEnddate().replace("T", "");
	       enddate=enddate.substring(0, 4)+"-"+enddate.substring(4, 6)+"-"+enddate.substring(6, 8);
	       if(res.getUntil()!=null)
	       res.setUntil(res.getUntil().substring(0, 4)+"-"+res.getUntil().substring(4, 6)+"-"+res.getUntil().substring(6, 8));
	       System.out.println(startdate);
	       System.out.println(res.getCalendar());
	       
	    JSONObject obj = new JSONObject();
        obj.put("summary", res.getSummary());
	       obj.put("start",startdate);
	       obj.put("end", enddate);
	       obj.put("location", res.getLocation());
	       obj.put("description", res.getDescription());
	       obj.put("calendar", res.getCalendar());
	       obj.put("reminderdata", res.getReminderdata());
	       obj.put("eventuid", res.getUid());
	       obj.put("clazz", res.getClazz());
	       obj.put("frequency", res.getFrequency());
	       obj.put("count", res.getCount());
	       obj.put("until", res.getUntil());
	     return obj.toJSONString();
	}

}
