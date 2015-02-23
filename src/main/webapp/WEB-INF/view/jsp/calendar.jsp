<%@page import="java.text.SimpleDateFormat"%>
<%@page import="webmail.wsdl.File"%>
<%@page import="java.util.ArrayList"%>
<%@page import="webmail.wsdl.EventBean"%>
<%@page import="java.util.List"%>
<%@page import="webmail.wsdl.EventArray"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
  </head>
<body onload="getclaendarlist()">
<div class="right-pane"> 
    
    <!-----------------------------/// Main Cointer Stared here --------------->
    <div id="widget" > 
      
      <!-------/// CALENDER TOP THREE OPTION ----------->
 <div class="top_three_calender"> 
        
        <!---/// FIRST CALENDER ------>
        <div class="first_cal_option"><div class="create_cal_icon"></div> Create Calender </div>
        <!------/// FIRST CALENDER END HERE --------> 
        <!---/// SECOND CALENDER ------>
        <div class="first_cal_option_1 hide_this"><div class="create_cal_icon_1"></div>Create Task</div>
        <!------/// SECOND CALENDER END HERE --------> 
        <!---/// THIRD CALENDER ------>
        <div class="first_cal_option_2 create_event"><div class="create_cal_icon_2"></div>Create Event</div>
        <!------/// THIRD CALENDER END HERE --------> 
        
      </div>
      <!---------/// CALENDER TOP THREE OPTION END HERE -------->
      <div class="agenda">Agenda</div>
      <div class="right_tool_part for_calender">
        <div class="right_tool"> <a href="#"> <img src="images/reload.png"> </a> </div>
        <div class="right_tool_1">
          <ul id="menu" >
            <li> <img src="images/setting_toll.png" class="four_margin" ></li>
            <li class="right_menu_1" > <img src="images/open_sub_menu.png" style="margin-left: 8px !important;"> 
              <!-- <ul class="for_setting">
                                            <li> <a href="#">Settings</a></li>
                                            <li><a href="#">Themes</a></li>
                                            <li> <a href="#">Help</a></li>
                                        </ul>--> 
            </li>
          </ul>
        </div>
      </div>
      
      <!---------------/// Tab Content Stared Here Off VIEW ---------------------------->
      <div id='calendar'></div>
      <!-----------------/// Tab Content End Here Off VIEW----------------------------> 
      
      <!-------------------/// Right View and Bottom View Tab Stared Here --------------->
      
      <div class="mail_content">
        <div class="mail_content_1" style="width: 48.5%; float: right; display: block; min-height: 75%; max-height: 95%;">
          <div class="mail_left_content"> 
            
            <!--------------/// Top Portion Started Here ------------>
            
            <div class="top_bottom_1">
              <h1>All New Job Opportunities for Fresher </h1>
              <div class="mail_right_1"> <a href="#">
                <div class="printer"></div>
                </a> <a href="#">
                <div class="fullscreen"></div>
                </a> </div>
              <div class="clear"></div>
              <div class="clear"></div>
            </div>
            
            <!------------------/// Top Portion End Here ----------------> 
            
            <!------// MAIL HEADER STARED HERE ------->
            <div class="mail_header mail_header_top" style="padding-top: 0px;"> 
              
              <!---- MAIL HEADER LEFT ------>
              <div class="mail_left">
                <div class="images_hover"> <img src="images/mail_icon.png"> 
                  
                  <!---------/// Images Details Stared Here ---------->
                  <div class="images_details">
                    <div class="mail_left_1"> <span>Timesjobs Job Alert</span>
                      <div class="clear"></div>
                      jobalert@timesjobs.com </div>
                    <img src="images/unnamed.png"> 
                    
                    <!-----------//// Bottom Images Details ------->
                    
                    <div class="send_mail_deatils"> <a href="#">Add to contacts</a> <a href="#">Emails</a> 
                      
                      <!-------/// Right Portion ------->
                      <div class="right_forw"> <a href="#">
                        <div class="mail_for"> <img src="images/plus_option.gif"> </div>
                        </a> <a href="#">
                        <div class="mail_for_1"> <img src="images/mail_fow.png"> </div>
                        </a> </div>
                      
                      <!-------/// Right Portion End -------> 
                      
                    </div>
                    
                    <!----------//// Bottom End Here -----------------> 
                    
                  </div>
                </div>
                
                <!--------/// Images End Here ----------------->
                
                <p class="first_p"><b>Techgig</b> <a href="#"><span>&lt;</span>jobs@techgig.com&gt;<span></span></a></p>
                <div class="mail_row">
                  <p class="last_p">to me </p>
                  <a href="#" onClick="mail_to(event);">
                  <div class="mail_deatil"></div>
                  </a> 
                  
                  <!-------------//// To Me ------------>
                  
                  <div class="to_me" style="display: none;">
                    <ul>
                      <li class="comm_width"><span>from: </span></li>
                      <li> Timesjobs Job Alert <span>&lt;</span>jobalert@timesjobs.com <span>&gt;</span></li>
                      <div class="clear"></div>
                      <li class="comm_width"><span>reply-to:</span></li>
                      <li> Timesjobs Job Alert &lt;jobalert@timesjobs.com&gt;</li>
                      <div class="clear"></div>
                      <li class="comm_width"><span>to:</span></li>
                      <li> hariom15791@gmail.com</li>
                      <div class="clear"></div>
                      <li class="comm_width"><span>date:</span></li>
                      <li> Sun, May 4, 2014 at 4:13 AM</li>
                      <div class="clear"></div>
                      <li class="comm_width"><span>subject:</span></li>
                      <li>Hariom, Optume IT Solutions Pvt. Ltd. jobs for you</li>
                      <div class="clear"></div>
                      <li class="comm_width"><span>mailed-by:</span></li>
                      <li>timesjobs.com</li>
                      <div class="clear"></div>
                      <li class="comm_width"><span>signed-by:</span></li>
                      <li>timesjobs.com</li>
                      <div class="clear"></div>
                      <li class="imag_upload"> <span>Images from this sender are always displayed.</span><a href="#">Don't display from now on.</a>
                        <div class="clear"></div>
                      </li>
                    </ul>
                  </div>
                  
                  <!--------------//// To Me End ------------> 
                  
                </div>
              </div>
              <!------- MAIL HEADER RIGHT ---> 
              <!---- MAIL HEADER LEFT ------>
              <div class="mail_right">
                <div style="float:left;margin-top: 7px;">10:21 AM (6 hours ago) </div>
                <div class="bottom_flag"></div>
                <div class="mail_option"> <a title="Reply" href="#">
                  <div class="back"> <img src="images/back_one.png"></div>
                  </a> <a title="More" href="#" onClick="option_here_1(event);">
                  <div class="option"> <img src="images/open_sub_menu.png"></div>
                  </a> </div>
              </div>
              <!------- MAIL HEADER RIGHT --->
              <div class="clear"></div>
            </div>
            <!-----/// MAIL END HEADER -----------> 
            <!----- /// MAIL MID CONTENT ----->
            <div class="mail_content_1"> 
              
              <!---------// Mail Option Are Here ------------>
              <div class="mail_down_option_1">
                <ul>
                  <li><a href="#">Reply</a></li>
                  <div class="clear"></div>
                  <li><a href="#">Reply to all</a></li>
                  <div class="clear"></div>
                  <li><a href="#">Forward</a></li>
                  <div class="clear"></div>
                  <li><a href="#">Open chat</a></li>
                  <div class="clear"></div>
                  <li><a href="#">Filter messages like this</a></li>
                  <div class="clear"></div>
                  <li><a href="#">Print</a></li>
                  <div class="clear"></div>
                  <li><a href="#">Add Techgig to Contacts list</a></li>
                  <div class="clear"></div>
                  <li><a href="#">Delete this message</a></li>
                  <div class="clear"></div>
                  <li><a href="#">Report spam</a></li>
                </ul>
                <div class="clear"></div>
              </div>
              <!-----------/// Mail Option End Here -------------->
              
              <p>Hi there!</p>
              <p>We hope you enjoy this webmail frontend as we here at Afterlogic, do. </p>
              <p>Please feel free to click, tap and drag-n-drop everything around. :) </p>
              <p>However, please note with this demo you can send emails to this demo email account only. It's just not to allow folks to send spam from here. </p>
              <p>Should you find that you need some help with getting this thing to work on your network, here are your options:</p>
              <p>Documentation, which should be your starting point<br>
                Helpdesk, to get assistance from our swift &amp; friendly Webmail Support Team
                Community Forum, where folks can help each other, discuss things and just hang around.<br>
                Support Team is also there, but Helpdesk is preferred.</p>
              <p>Also don't forget to get in touch with us at Facebook and Twitter.</p>
              <p>For those of you who are Big Guys, and should require dedicated support and the team behind the product, please call us +1-973-784-1100 or just drop us a message here.</p>
              <!---------------/// ATTACHMENT STARTED HERE ----------->
              <div class="main_attachment">
                <div class="attachment_file attachment_top"> 
                  <!-------------/// LEFT ATTACHMENT ---------->
                  <div class="left_attachment">
                    <p><span>2</span> Attachments</p>
                    <div class="clear"></div>
                  </div>
                  <!------------/// LEFT ATTACHMENT END -------> 
                  <!------------/// RIGHT ATTACHMENT ------->
                  <div class="left_attachment"></div>
                  <!----------/// RIGHT ATTACHMENT ---------> 
                </div>
                <!--------/// ATTACHMENT CONTENT ---->
                <div class="attachment_content">
                  <ul>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  STARED HERE ------------>
                    <li>
                      <div class="attachment_con_box">
                        <div class="attachment_images"> <img src="images/photo_1.jpg" /> </div>
                        <div class="attach_con_bottom"> <img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span> </div>
                        <div class="attach_mousehover">
                          <div class="attach_row"><img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span>
                            <div class="clear"></div>
                            <div class="attachment_size">2 KB</div>
                          </div>
                          <div class="clear"></div>
                          <div class="attachment_option"> <img src="images/download.png" /> </div>
                        </div>
                      </div>
                    </li>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  END HERE ------------> 
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  STARED HERE ------------>
                    <li>
                      <div class="attachment_con_box">
                        <div class="attachment_images"> <img src="images/photo_1.jpg" /> </div>
                        <div class="attach_con_bottom"> <img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span> </div>
                        <div class="attach_mousehover">
                          <div class="attach_row"><img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span>
                            <div class="clear"></div>
                            <div class="attachment_size">2 KB</div>
                          </div>
                          <div class="clear"></div>
                          <div class="attachment_option"> <img src="images/download.png" /> </div>
                        </div>
                      </div>
                    </li>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  END HERE ------------> 
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  STARED HERE ------------>
                    <li>
                      <div class="attachment_con_box">
                        <div class="attachment_images"> <img src="images/photo_1.jpg" /> </div>
                        <div class="attach_con_bottom"> <img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span> </div>
                        <div class="attach_mousehover">
                          <div class="attach_row"><img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span>
                            <div class="clear"></div>
                            <div class="attachment_size">2 KB</div>
                          </div>
                          <div class="clear"></div>
                          <div class="attachment_option"> <img src="images/download.png" /> </div>
                        </div>
                      </div>
                    </li>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  END HERE ------------> 
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  STARED HERE ------------>
                    <li>
                      <div class="attachment_con_box">
                        <div class="attachment_images"> <img src="images/photo_1.jpg" /> </div>
                        <div class="attach_con_bottom"> <img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span> </div>
                        <div class="attach_mousehover">
                          <div class="attach_row"><img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span>
                            <div class="clear"></div>
                            <div class="attachment_size">2 KB</div>
                          </div>
                          <div class="clear"></div>
                          <div class="attachment_option"> <img src="images/download.png" /> </div>
                        </div>
                      </div>
                    </li>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  END HERE ------------> 
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  STARED HERE ------------>
                    <li>
                      <div class="attachment_con_box">
                        <div class="attachment_images"> <img src="images/photo_1.jpg" /> </div>
                        <div class="attach_con_bottom"> <img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span> </div>
                        <div class="attach_mousehover">
                          <div class="attach_row"><img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span>
                            <div class="clear"></div>
                            <div class="attachment_size">2 KB</div>
                          </div>
                          <div class="clear"></div>
                          <div class="attachment_option"> <img src="images/download.png" /> </div>
                        </div>
                      </div>
                    </li>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  END HERE ------------> 
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  STARED HERE ------------>
                    <li>
                      <div class="attachment_con_box">
                        <div class="attachment_images"> <img src="images/photo_1.jpg" /> </div>
                        <div class="attach_con_bottom"> <img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span> </div>
                        <div class="attach_mousehover">
                          <div class="attach_row"><img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span>
                            <div class="clear"></div>
                            <div class="attachment_size">2 KB</div>
                          </div>
                          <div class="clear"></div>
                          <div class="attachment_option"> <img src="images/download.png" /> </div>
                        </div>
                      </div>
                    </li>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  END HERE ------------> 
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  STARED HERE ------------>
                    <li>
                      <div class="attachment_con_box">
                        <div class="attachment_images"> <img src="images/photo_1.jpg" /> </div>
                        <div class="attach_con_bottom"> <img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span> </div>
                        <div class="attach_mousehover">
                          <div class="attach_row"><img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span>
                            <div class="clear"></div>
                            <div class="attachment_size">2 KB</div>
                          </div>
                          <div class="clear"></div>
                          <div class="attachment_option"> <img src="images/download.png" /> </div>
                        </div>
                      </div>
                    </li>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  END HERE ------------> 
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  STARED HERE ------------>
                    <li>
                      <div class="attachment_con_box">
                        <div class="attachment_images"> <img src="images/photo_1.jpg" /> </div>
                        <div class="attach_con_bottom"> <img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span> </div>
                        <div class="attach_mousehover">
                          <div class="attach_row"><img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span>
                            <div class="clear"></div>
                            <div class="attachment_size">2 KB</div>
                          </div>
                          <div class="clear"></div>
                          <div class="attachment_option"> <img src="images/download.png" /> </div>
                        </div>
                      </div>
                    </li>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  END HERE ------------> 
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  STARED HERE ------------>
                    <li>
                      <div class="attachment_con_box">
                        <div class="attachment_images"> <img src="images/photo_1.jpg" /> </div>
                        <div class="attach_con_bottom"> <img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span> </div>
                        <div class="attach_mousehover">
                          <div class="attach_row"><img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span>
                            <div class="clear"></div>
                            <div class="attachment_size">2 KB</div>
                          </div>
                          <div class="clear"></div>
                          <div class="attachment_option"> <img src="images/download.png" /> </div>
                        </div>
                      </div>
                    </li>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  END HERE ------------> 
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  STARED HERE ------------>
                    <li>
                      <div class="attachment_con_box">
                        <div class="attachment_images"> <img src="images/photo_1.jpg" /> </div>
                        <div class="attach_con_bottom"> <img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span> </div>
                        <div class="attach_mousehover">
                          <div class="attach_row"><img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span>
                            <div class="clear"></div>
                            <div class="attachment_size">2 KB</div>
                          </div>
                          <div class="clear"></div>
                          <div class="attachment_option"> <img src="images/download.png" /> </div>
                        </div>
                      </div>
                    </li>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  END HERE ------------> 
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  STARED HERE ------------>
                    <li>
                      <div class="attachment_con_box">
                        <div class="attachment_images"> <img src="images/photo_1.jpg" /> </div>
                        <div class="attach_con_bottom"> <img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span> </div>
                        <div class="attach_mousehover">
                          <div class="attach_row"><img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span>
                            <div class="clear"></div>
                            <div class="attachment_size">2 KB</div>
                          </div>
                          <div class="clear"></div>
                          <div class="attachment_option"> <img src="images/download.png" /> </div>
                        </div>
                      </div>
                    </li>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  END HERE ------------> 
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  STARED HERE ------------>
                    <li>
                      <div class="attachment_con_box">
                        <div class="attachment_images"> <img src="images/photo_1.jpg" /> </div>
                        <div class="attach_con_bottom"> <img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span> </div>
                        <div class="attach_mousehover">
                          <div class="attach_row"><img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span>
                            <div class="clear"></div>
                            <div class="attachment_size">2 KB</div>
                          </div>
                          <div class="clear"></div>
                          <div class="attachment_option"> <img src="images/download.png" /> </div>
                        </div>
                      </div>
                    </li>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  END HERE ------------> 
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  STARED HERE ------------>
                    <li>
                      <div class="attachment_con_box">
                        <div class="attachment_images"> <img src="images/photo_1.jpg" /> </div>
                        <div class="attach_con_bottom"> <img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span> </div>
                        <div class="attach_mousehover">
                          <div class="attach_row"><img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span>
                            <div class="clear"></div>
                            <div class="attachment_size">2 KB</div>
                          </div>
                          <div class="clear"></div>
                          <div class="attachment_option"> <img src="images/download.png" /> </div>
                        </div>
                      </div>
                    </li>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  END HERE ------------> 
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  STARED HERE ------------>
                    <li>
                      <div class="attachment_con_box">
                        <div class="attachment_images"> <img src="images/photo_1.jpg" /> </div>
                        <div class="attach_con_bottom"> <img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span> </div>
                        <div class="attach_mousehover">
                          <div class="attach_row"><img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span>
                            <div class="clear"></div>
                            <div class="attachment_size">2 KB</div>
                          </div>
                          <div class="clear"></div>
                          <div class="attachment_option"> <img src="images/download.png" /> </div>
                        </div>
                      </div>
                    </li>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  END HERE ------------> 
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  STARED HERE ------------>
                    <li>
                      <div class="attachment_con_box">
                        <div class="attachment_images"> <img src="images/photo_1.jpg" /> </div>
                        <div class="attach_con_bottom"> <img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span> </div>
                        <div class="attach_mousehover">
                          <div class="attach_row"><img src="images/icon_1_pdf_x16.png" /> <span>Important Images for Web.pdf</span>
                            <div class="clear"></div>
                            <div class="attachment_size">2 KB</div>
                          </div>
                          <div class="clear"></div>
                          <div class="attachment_option"> <img src="images/download.png" /> </div>
                        </div>
                      </div>
                    </li>
                    <!-------------/// MAIN ATTACHMENT ROW CONTENT  END HERE ------------>
                  </ul>
                </div>
                <!----------/// ATTACHMENT CONTENT END -----> 
                
              </div>
              <!---------------/// ATTACHMENT END HERE ------------> 
            </div>
            <div class="clear"></div>
            <!------------/// Bottom Portion Here(Mail Replay) --------------->
            <div class="bottom_left" style="display: block;"> </div>
            <!------------//// Bottom Portion Here --------------->
            
            <div class="your_option_1" onClick="mail_forward_11();" style="margin-top: 64px;">Click here to <a href="#">Reply</a> or <a href="#">Forward</a></div>
            <!-------------//// Replay Details Are Here --------------->
            <div class="mail_forward_11"> 
              
              <!-------------/// FORWARD TOP ------------->
              <div class="forward_top">
                <div class="forward_mail"> <a href="#" class="mail_left_for"> <img src="images/back_one.png"> </a> <a href="#" class="mail_right_for" onClick="down_mail(event);"> <img src="images/open_sub_menu.png"> </a>
                  <div class="main_bottom_option"> </div>
                </div>
                <div class="forward_mail_left"> </div>
              </div>
              <!-------------/// FORWARD TOP -------------> 
              
              <!-------------/// FORWARD TOP ------------->
              <div class="forward_mid"> </div>
              <!-------------/// FORWARD TOP -------------> 
              
              <!-------------/// FORWARD TOP ------------->
              <div class="forward_bottom"> 
                
                <!----------------/// Left Portion --------------->
                
                <div class="for_bottom_left"> Send </div>
                
                <!----------------/// Left Portion End ------------> 
                
                <!----------------/// Right Portion --------------->
                
                <div class="for_bottom_mid"> <a href="#" class="font_image"> <img src="images/a_fonts.gif"> </a>
                  <div class="bor_1"></div>
                  <a href="#" class="attach_image"> <img src="images/attachment.png"> </a> <a href="#" class="plus"> <img src="images/plus_black.png">
                  <div class="plus_option"></div>
                  </a> </div>
                
                <!----------------/// Right Portion End ------------> 
                
                <!----------------/// Right Portion --------------->
                
                <div class="for_bottom_right"> <a href="#" class="dustbin"><img src="images/tool.png"></a>
                  <div class="bor_1"></div>
                  <a href="#" class="bottom_down_1" onClick="bootom_forward(event);"><img src="images/open_sub_menu.png"></a> </div>
                
                <!----------------/// Right Portion End ------------> 
                
              </div>
              <!-------------/// FORWARD TOP ------------->
              <div class="for_bottom"> </div>
            </div>
            <!--------------/// Replay Details End Here ----------------> 
            
          </div>
          
          <!------/// MAIL MID CONTENT ---->
          <div class="clear"></div>
          <div class="clear"></div>
        </div>
      </div>
      
      <!-------------------/// Right View and Bottom View Tab End Here ---------------> 
      
    </div>
    
    <!--------------------/// Mail Cointer End Here ----------------->
    <div class="clear"></div>
  </div>
</div>
<div class="for_setting_1">
  <ul id="menu" class="extra_menu">
    <li> <a href="#">&nbsp; </a>
      <ul class="for_setting new_submenu">
        <li> <a href="#">Settings</a></li>
        <li><a href="#">Themes</a></li>
        <li> <a href="#">Help</a></li>
      </ul>
    </li>
  </ul>
</div>
<script src="js/event.js" type="text/javascript" language="javascript" ></script> 
<script src="js/tab_event.js" type="text/javascript" language="javascript" ></script> 
<script type='text/javascript' src='js/jquery.dcjqaccordion.2.7.min.js'></script> 
<script type="text/javascript">
                                                $(document).ready(function($) {
                                                    $('#accordion-3').dcAccordion({
                                                        eventType: 'click',
                                                        autoClose: false,
                                                        saveState: false,
                                                        disableLink: false,
                                                        showCount: false,
                                                        speed: 'slow'
                                                    });
                                                });
            </script>
<link rel="stylesheet" type="text/css" href="css/jquery.jscrollpane.css" />
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script> 
<script type="text/javascript">
                                                $(document).ready(function() {
                                                    if (!$.browser.webkit) {
                                                        $('.container').jScrollPane();
                                                    }
                                                });
            </script> 

<!---------------------/// JS CALENDER STARED HERE ------------> 

<script>
            $(document).ready(function() {
            $('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			defaultDate: '2014-11-12',
			selectable: true,
			selectHelper: true,
			select: function(start, end) {
				
				/// TEST ADD HERE 
				
				if($('.calender_pop').css('display')=='none')
				{
					
					$('.calender_pop').css('display','block');
					 $('.web_dialog_overlay').show();
					
					
			}
				
				 $('.save_cal').click(function(){
					
				     var input_value = $('.summary').val();
					//alert(input_value);
					
					});
				 
				/// ********************** ///
				///     NOTE  stred here  ///
				/// ******************** ///
				
				
				////  i am not change the value when or append the value in each box beause it affect in development
				  //   if  you want to new  state only remove the comment of //var title = prompt('Event Title:'); only 
				  /// and hide the new test event
				
				
				
				
				/// ********************** ///
				///     NOTE  end         ///
				/// ******************** ///
				
				
				/// TEST ADD END HERE 
				
				
				//var title = prompt('Event Title:');
				//var title = prompt('Event Title:');
				
				
				var eventData;
				if (title) {
					eventData = {
						title: title,
						start: start,
						end: end
					};
					alert(title);
					$('#calendar').fullCalendar('renderEvent', eventData, true); // stick? = true
				}
				$('#calendar').fullCalendar('unselect');
			},
			editable: true,
			eventLimit: true, // allow "more" link when too many events
			
			
			events: [
			         <% 
			         List <EventBean> eventarray=(List <EventBean>)request.getAttribute("eventlist");
			         for(EventBean e:eventarray)
			         {  			       		   
			        	String [] startdatetimelist=e.getStartdate().split("T");
			        	String startdate=startdatetimelist[0];
			        	startdate=startdate.substring(0, 4)+"-"+startdate.substring(4,6)+"-"+startdate.substring(6,8);
			        	String starttime=startdatetimelist[1];
			        	starttime=starttime.substring(0,2)+":"+starttime.substring(2,4)+":"+starttime.substring(4,6);
			        	String startdatetime=startdate+"T"+starttime;
			        	System.out.println(startdatetime);
			        	
			        	String [] enddatetimelist=e.getEnddate().split("T");
			        	String enddate=enddatetimelist[0];
			        	enddate=enddate.substring(0, 4)+"-"+enddate.substring(4,6)+"-"+enddate.substring(6,8);
			        	String endtime=enddatetimelist[1];
			        	endtime=endtime.substring(0,2)+":"+endtime.substring(2,4)+":"+endtime.substring(4,6);
			        	String enddatetime=enddate+"T"+endtime;
			        	System.out.println(enddatetime);
			        	
			        	String []calendardetails=e.getCalendar().split("`");
			        	String calendarcolor="#"+calendardetails[1];
			        	
			        	System.out.println("check");
			        	
			        	 
	        	if(e.getRepeatdatetimelist()!=null)
	        	{
	        		
	        	      for(String str:e.getRepeatdatetimelist().getDateTime())
	        	      {
	        	    	    System.out.println(str);
	        	    	  startdatetime=str;
	        	    	  startdatetime=startdatetime.substring(0, 4)+"-"+startdatetime.substring(4,6)+"-"+startdatetime.substring(6,8)+"T"+startdatetime.substring(9,11)+":"+startdatetime.substring(11,13)+":"+startdatetime.substring(13,15);
	        	    	  System.out.println(startdatetime); 
	        	    	/*  SimpleDateFormat sdf=new SimpleDateFormat("yy-MM-ddTHH:mm:ss");
	        	    	   sdf.format(new Date(startdate));
	        	    	  System.out.println(startdatetime); */
	        	    	  %>
	        	    	  {
	      					id: '<%=e.getUid()%>',
	      					c:'<%=e.getUid()%>',
	      					name:'<%=e.getCalendar()%>',
	      					title: '<%=e.getSummary() %>',
	      					start: '<%= startdatetime%>',
	      					color: '<%=calendarcolor%>',   
	      					 /*textColor: 'black' */
	      				},
	        	    	  <%
	        	      }
	 		    }	
	        	else
	        	{
		        	
	         %>
		{
			id: '<%=e.getUid()%>',
			c:'<%=e.getUid()%>',
			name:'<%=e.getCalendar()%>',
			title: '<%=e.getSummary() %>',
			start: '<%= startdatetime%>',
			end:'<%=enddatetime %>',
			 color: '<%=calendarcolor%>',   
			 /*textColor: 'black' */
		},
		<% 			
	        	}
			         }
			         %>
				/*  {
				    title: 'Long Event',
					start: '2014-11-07',
					end: '2014-11-10'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2014-11-09T16:00:00'
				},{
					id: 999,
					title: 'Repeating Event',
					start: '2014-12-10T16:00:00'
				}, */
				/*{
					id: 999,
					title: 'Repeating Event',
					start: '2014-11-16T16:00:00'
				},
				{
					title: 'Conference',
					start: '2014-11-11',
					end: '2014-11-13'
				},
				{
					title: 'Meeting',
					start: '2014-11-12T10:30:00',
					end: '2014-11-12T12:30:00'
				},
				{
					title: 'Lunch',
					start: '2014-11-12T12:00:00'
				},
				{
					title: 'Meeting',
					start: '2014-11-12T14:30:00'
				},
				{
					title: 'Happy Hour',
					start: '2014-11-12T17:30:00'
				}, */
				/* {
					title: 'Dinner',
					start: '2014-11-12T20:00:00'
				},
				{
					title: 'Birthday Party',
					start: '2014-11-13T07:00:00'
				}, */
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2014-11-28'
				}
			]
		});
		
	});


</script>
<link rel='stylesheet' href='css/jquery-ui.min.css' />
<link href='css/fullcalendar.css' rel='stylesheet' />
<link href='css/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src='js/moment.min.js'></script> 
<!--<script src='../lib/jquery.min.js'></script>---> 
<script src='js/fullcalendar.js'></script>
<!-----------/// COLOR PICKER STRED HERE ----------->
    <link rel="stylesheet" type="text/css" href="color_picker/spectrum.css">
    <script type="text/javascript" src="color_picker/spectrum.js"></script>
    <script type='text/javascript' src='color_picker/docs.js'></script>
<!-------------/// COLOR PICKER END HERE --------------->
<style>
	#calendar {
		/*max-width: 900px;*/
		margin: 0 auto;
	}
</style>
<!--------------------/// JS CALENDER END HERE ------------------> 

<!------------------/// NEW SPILITTER STARED HERE --------------> 
<script>
       jQuery(function($) {
    $(window).on('resize', function() {
        var height = $(window).height()-135;
		//alert(height);
        console.log(height);
        $('#foo').height(height).split({ orientation:'horizontal', limit:50 });
		$('#foo').css('height',height)
        $('#b').height(height / 2)-30;
		//$('.chat_inner_content').height(height / 2);
		
		
    }).trigger('resize');
});

  
    </script> 
<!-------------------//// NEW SPILITTER END HERE ---------------> 

<!------------/// CREATE CALENDER POP STARED HERE ----------->

<div class="calender_pop"> 
<form id="eventform" commandName="eventform">
  <!--------/// HEADER STARED HERE ----------->
  <div class="pop_header">
  <div id="editeventheader">Create event</div>
  
      <span>X</span>
  </div>
  <!----------/// HEADER END HERE -------> 
  <!----------// POP TAB STRED HERE -------->
  <div class="pop_tab">
         <ul>
             <li class="gen_opt gen_active"><div class="gen_icon"></div>General options</li>
             <li class="repe"><div class="repe_icon"></div>Repeat</li>
             <li class="remind"><div class="reminder_icon"></div>Reminders</li>
             <li class="work_g"><div class="working_icon"></div>Invite Guest</li>
         </ul>
  
  
  
  <!---  <div class="gen_opt">General options</div>
    <div class="repe">Repeat</div>
    <div class="remind">Reminders</div>
    <div class="work_g">Workgroup</div> --->
  </div>
  <!---------/// POP TAB END HERE -------->
  <div class="clear"></div>
  <!----------/// POPUP CREATE CONTENT BOX ---------->

  <div class="pop_content"> 
    <!------------//// POP CONTENT GENERAL OPTION --------->
    <div class="gen_content">
      <table>
        <tr>
          <td>Summary</td>
          <td><input type="text" class="summary clear_data" id="summary" name="summary" /></td>
        </tr>
        <tr>
          <td>Location</td>
          <td><input type="text" id="location" name="location" class="clear_data"/></td>
        </tr>
        <tr>
          <td>Calendar</td>
          <td><select id="calendar_select" name="calendar" class="clear_data">
          <option value="Select Calendar">Select Calendar</option>
          <%   
            List <webmail.wsdl.File> calendarlist=(List <webmail.wsdl.File>)request.getAttribute("calendarfilelist");
            for(File cl: calendarlist)
            {  	            	
            	String []filenamelist=cl.getFileName().split("`");
            	String calendarfilename=filenamelist[0];                        	
            %>
              <option value="<%=cl.getFileName() %>"><%=calendarfilename %></option>
              <%} %>
              </select></td>
        </tr>
       <tr >
                   <td>Privacy</td>
                   <td>
                              <select id="clazz" name="clazz" class="clear_data">
                                    <option value="PUBLIC">Public</option>
                                    <option value="PRIVATE">Private</option>
                                    <option value="CONFIDENTIAL">Confidential</option>
                              </select>
                   </td>
                </tr>
                <tr>
                   <td>Show this time as</td>
                   <td>
                            <select id="freebusy" class="clear_data" name="freebusy">
                                  <option>Busy</option>
                                  <option>Free</option>
                            </select>
                   
                   </td>
        </tr>
        <tr>
          <td>Start date</td>
          <td><input type="date" id="startdate" name="startdate" class="clear_data"/>
            <input type="text" class="date_stared clear_data" placeholder="Show Time Here" id="starttime" /></td>
        </tr>
        <tr>
          <td>End date</td>
          <td><input type="date" id="enddate" name="enddate" class="clear_data"/>
            <input type="text" class="date_stared clear_data" placeholder="Show Time Here" id="endtime"/></td>
        </tr>
        <tr>
          <td>All day</td>
          <td><input type="checkbox" id="allday" name="allday" class="clear_data"/></td>
        </tr>
        <tr>
          <td>Description</td>
          <td><textarea id="description" name="description" class="clear_data"></textarea></td>
        </tr>
      </table>
      
         <div class="remi_date_opt">
      
                                    <div class="dymaic_am">
  <div class="12a amvalue twitle_num">12:00am</div>
  <div class="12.30a amvalue">12:30am</div>
  <div class="1a amvalue" >1:00am</div>
  <div class="1.30a amvalue" >1:30am</div>
  <div class="2a amvalue" >2:00am</div>
  <div class="2.3a amvalue" >2:30am</div>
  <div class="3a amvalue" >3:00am</div>
  <div class="3.3a amvalue" >3:30am</div>
  <div class="4a amvalue" >4:00am</div>
  <div class="4.3a amvalue" >4:30am</div>
  <div class="5a amvalue" >5:00am</div>
  <div class="5.30a amvalue" >5:30am</div>
  <div class="6a amvalue" >6:00am</div>
  <div class="6.30a amvalue" >6:30am</div>
  <div class="7a amvalue" >7:00am</div>
  <div class="7.30a amvalue" >7:30am</div>
  <div class="8a amvalue" >8:00am</div>
  <div class="8.3a amvalue" >8:30am</div>
  <div class="9a amvalue" >9:00am</div>
  <div class="9.3a amvalue" >9:30am</div>
  <div class="10a amvalue" >10:00am</div>
  <div class="10.3a amvalue" >10:30am</div>
  <div class="11a amvalue" >11:00am</div>
  <div class="11.3a amvalue" >11:30am</div>
   <div class="12p amvalue" >12:00pm</div>
  <div class="12.3p amvalue" >12:30pm</div>
  <div class="1p amvalue" >1:00pm</div>
  <div class="1.3p amvalue" >1:30pm</div>
  <div class="2p amvalue" >2:00pm</div>
  <div class="2.3p amvalue" >2:30pm</div>
  <div class="3p amvalue" >3:00pm</div>
  <div class="3.30p amvalue" >3:30pm</div>
  <div class="4p amvalue" >4:00pm</div>
  <div class="4.30p amvalue" >4:30pm</div>
  <div class="5p amvalue" >5:00pm</div>
  <div class="5.3p amvalue" >5:30pm</div>
  <div class="6p amvalue" >6:00pm</div>
  <div class="6.3p amvalue" >6:30pm</div>
  <div class="7p amvalue" >7:00pm</div>
  <div class="730p amvalue" >7:30pm</div>
  <div class="8p amvalue" >8:00pm</div>
  <div class="8.30p amvalue" >8:30pm</div>
  <div class="9p amvalue" >9:00pm</div>
  <div class="9.30p amvalue" >9:30pm</div>
  <div class="10p amvalue" >10:00pm</div>
  <div class="10.30p amvalue" >10:30pm</div>
  <div class="11.p amvalue" >11:00pm</div>
  <div class="11.30p amvalue" >11:30pm</div>
</div>

     
                     </div>
      <div class="clear"></div>
    </div>
    <!------------//// POP CONTENT GENERAL OPTION END ---------> 
    <!--------/// REPEAT CONTENT ------>
    <div class="repeat_cal">
      <table>
        <tr>
          <td>Repeat</td>
          <td><select id="frequency"  name="frequency" class="clear_data">
              <option >No repetitions</option>
              <option value="DAILY">Daily</option>
              <option value="WEEKLY">Weekly</option>
              <option value="MONTHLY">Monthly</option>
              <option value="YEARLY">Yearly</option>
            </select></td>
        </tr>
        <tr>
          <td>Count</td>
          <td><input type="text" id="count" name="count" class="clear_data"/></td>
        </tr>
        <tr>
          <td>Until</td>
          <td><input type="date" id="until" name="until" /></td>
          
        </tr>
      </table>
    </div>
    <!-----------/// REPEAT CONTENT END HERE ------> 
    <!-----------// REMINDER CAL STRED --------->
    <div class="reminder_cal">
                       <table id="defaultremindertable" >
        <tr>
          <td colspan="2" class="new_line">This event has no configured reminders</td>
        </tr>
        <tr>
          <td colspan="2" class="new_line_1">New reminder:</td>
        </tr>
       <!--  <tr>
          <td><img src="images/new_reminder.png" /></td>
          <td >
            <select id="remindertype1"><option>Email</option><option>Pop-up</option></select>
            <input type="text" class="reminder_time" id="remindertime1"/>
            <select class="sel_remin_opt" id="reminderduration1"><option class="minutes">minutes</option><option class="hours">hours</option>
            <option class="day">days</option><option class="week">weeks</option></select>
            </td>
            <td class="delete_reminder"><img src="images/tool.png" /></td>
        </tr> -->
        <tr><td colspan="3"><span>Add New</span></td></tr> 
      </table>
      <input type="hidden" id="counter" value="0" class="clear_data"/>
      <input type="hidden" id="reminderdata" name="reminderdata" class="clear_data" />
      <input type="hidden" id="uid" name="uid" class="clear_data"/>
             <div class="append_reminder">
                    <table class="new_reminder" >
           
                   </table>
             </div>
                        <div class="remi_date_opt">
      
                                    <div class="dymaic_am">
  <div class="12a amvalue twitle_num">12:00am</div>
  <div class="12.30a amvalue">12:30am</div>
  <div class="1a amvalue" >1:00am</div>
  <div class="1.30a amvalue" >1:30am</div>
  <div class="2a amvalue" >2:00am</div>
  <div class="2.3a amvalue" >2:30am</div>
  <div class="3a amvalue" >3:00am</div>
  <div class="3.3a amvalue" >3:30am</div>
  <div class="4a amvalue" >4:00am</div>
  <div class="4.3a amvalue" >4:30am</div>
  <div class="5a amvalue" >5:00am</div>
  <div class="5.30a amvalue" >5:30am</div>
  <div class="6a amvalue" >6:00am</div>
  <div class="6.30a amvalue" >6:30am</div>
  <div class="7a amvalue" >7:00am</div>
  <div class="7.30a amvalue" >7:30am</div>
  <div class="8a amvalue" >8:00am</div>
  <div class="8.3a amvalue" >8:30am</div>
  <div class="9a amvalue" >9:00am</div>
  <div class="9.3a amvalue" >9:30am</div>
  <div class="10a amvalue" >10:00am</div>
  <div class="10.3a amvalue" >10:30am</div>
  <div class="11a amvalue" >11:00am</div>
  <div class="11.3a amvalue" >11:30am</div>
   <div class="12p amvalue" >12:00pm</div>
  <div class="12.3p amvalue" >12:30pm</div>
  <div class="1p amvalue" >1:00pm</div>
  <div class="1.3p amvalue" >1:30pm</div>
  <div class="2p amvalue" >2:00pm</div>
  <div class="2.3p amvalue" >2:30pm</div>
  <div class="3p amvalue" >3:00pm</div>
  <div class="3.30p amvalue" >3:30pm</div>
  <div class="4p amvalue" >4:00pm</div>
  <div class="4.30p amvalue" >4:30pm</div>
  <div class="5p amvalue" >5:00pm</div>
  <div class="5.3p amvalue" >5:30pm</div>
  <div class="6p amvalue" >6:00pm</div>
  <div class="6.3p amvalue" >6:30pm</div>
  <div class="7p amvalue" >7:00pm</div>
  <div class="730p amvalue" >7:30pm</div>
  <div class="8p amvalue" >8:00pm</div>
  <div class="8.30p amvalue" >8:30pm</div>
  <div class="9p amvalue" >9:00pm</div>
  <div class="9.30p amvalue" >9:30pm</div>
  <div class="10p amvalue" >10:00pm</div>
  <div class="10.30p amvalue" >10:30pm</div>
  <div class="11.p amvalue" >11:00pm</div>
  <div class="11.30p amvalue" >11:30pm</div>
</div>

     
                     </div>
      
      <div class="clear"></div>
    </div>
    <!-----------/// REMINDER CAL END HERE ------->
    <!-----------//// WORKGROUP CAL ------------>
    <div class="workgroup_cal">
             <table>
                <tr >
                   <td>Add Guest </td>
                   <td colspan="2">
                            <input type="text" class="add_guest_name" class="clear_data" />
                   </td>
                    <td colspan="3" >
                           <div class="add_guest" >Add</div>
                   
                   </td>
                </tr>
                
                </table>
           <div class="add_guest_content">
                <table class="heading_guest">
                <tr class="add_name">
                   <td ><input type="checkbox" class="select_guest"  /> <span>Name Here</span></td>
                   <td><span><img src="images/cont_imag.png"/>Email Guest</span><div class="close_guest_1"><img src="images/tool.png" /></div></td>
                </tr>
                </table>
                     <div class="guest_content_11">
                              <table class="append_guest">
                                      <tr class="add_name row_guest">
                                         <td colspan="2" ><input type="checkbox" class="select_guest_1" /> <span>Test Name Here</span></td>
                                         <td><div class="close_guest"><img src="images/tool.png" /></div></td>
                                      </tr>
                           </table>
                     </div>
             </div>
    
    
    </div>
    <!------------/// WORKGROUP CAL END HERE ------->
    <div class="clear"></div>
    <div class="save_cal" onclick="saveEvent()">Save</div>
    <div class="cancel_cal">Cancel</div>
    <div class="clear"></div>
  </div>
  <!-------------/// POPUP CREATE CONTENT BOX END HERE ------------> 
 </form> 
</div>
<script type="text/javascript">
function saveEvent()
{
	setreminder();
	var eventdetails= $("#eventform").serialize();
	alert("received");
	
	$.ajax({
        type:"get",
        data:eventdetails,
        url:"createEvent",
        async:true,
        dataType: "json",
        success: function(data){
        	 alert(data);
        	
        	 var filename=data.name.split("`");
        	
        	 alert(data.repeatdates);
        	 if(data.c!="")
        		 {
             	 $("."+data.id).parent().parent().remove();
             	
        		 }
             	 var eventData=null;
        	 	 if(Object.keys(data.repeatdates).length!=0)
        		 {
        		 for(j=0;j<Object.keys(data.repeatdates).length;j++)
        			 {
        			       			 
        			 eventData = {
            			     id:data.id ,
            			     c:data.id,
            				 name:data.name ,
    						title: data.summary,
    						start:data.repeatdates[Object.keys(data.repeatdates)[j]],
    						color:"#"+filename[1]
    					    };
        			 $('#calendar').fullCalendar('renderEvent', eventData, true);
        			 }
        		 }
        	 else
        		 {
        		 alert(data.repeatdates);
        	  eventData = {
        			     id:data.id ,
        			     c:data.id,
        				 name:data.name ,
						title: data.summary,
						start: data.start,
						end :data.end,
						color:"#"+filename[1]
					    };
        	  $('#calendar').fullCalendar('renderEvent', eventData, true);
        		 }
                      
        }
    });
		 $('.clear_data').val("");
		 $('#defaultremindertable').html('<table ><tbody><tr><td colspan="2" class="new_line">This event has no configured reminders</td></tr><tr><td colspan="2" class="new_line_1">New reminder:</td></tr><tr><td colspan="3"><span>Add New</span></td></tr></tbody></table>');
		 $('.new_reminder').html("");
		 $('.calender_pop').hide(500);
		  $('.web_dialog_overlay').hide();
}
function setreminder()
{
	reminderdata="";
	var loopterminator=$('#counter').val().split(",");
	alert(loopterminator);
	 for(j=0;j<loopterminator.length;j++)
		{
		   if($('#remindertime'+loopterminator[j]).val()!=undefined)
			reminderdata=reminderdata+$('#remindertype'+loopterminator[j]).val()+"`"+$('#remindertime'+loopterminator[j]).val()+"`"+$('#reminderduration'+loopterminator[j]).val()+";";

		} 
	alert(reminderdata);
	$('#reminderdata').val(reminderdata);

	alert($('#reminderdata').val());
	}
</script>
<!---------//// CREATE THE CALENDER STRED HERE --------------->
<div class="create_cal">
<!---/// HEADER ----->
<div class="pop_header">New Calendar <span>X</span> </div>
<!-----/// HEADER END HERE ------->
<!----/// CONTENT STRED HERE ------>
<div class="inn_con_cal">

        <table>
     <tbody><tr>
          <td>Display Name</td>
           <td><input type="text" class="dis_name clear_data" id="calendarname" ></td>
     </tr>
     <tr>
          <td>Display Color</td>
           <td class="new_cal_color clear_data" ><div class="color_1 color_find" ><span> &#x2713 </span></div>
                         <div class="color_2 color_find" > <span> &#x2713 </span></div>
                         <div class="color_3 color_find" ><span> &#x2713 </span></div>
                         <div class="color_4 color_find" > <span> &#x2713 </span></div>
                         <div class="color_5 color_find" > <span> &#x2713 </span></div>
                         <div class="color_6 color_find" > <span> &#x2713 </span></div>
                         <div class="clear"></div>
                         <div class="color_7 color_find" > <span> &#x2713 </span></div>
                         <div class="color_8 color_find"> <span> &#x2713 </span></div>
                         <div class="color_9 color_find" > <span> &#x2713 </span></div>
                         <div class="color_10 color_find" > <span> &#x2713 </span></div>
                         <div class="color_11 color_find"> <span> &#x2713 </span></div>
                         <div class="color_12 color_find" > <span> &#x2713 </span></div></td>
     </tr>
  </tbody></table>
   <input type="hidden" id="calendarcolor" class="clear_data"/>      


</div>
  <div class="clear"></div>
    <div class="save_cal_1" onclick="saveCalendar()">Save</div>
    <div class="cancel_cal_1">Cancel</div>
    <div class="clear"></div>

<!------/// CONTENT END HERE ---------->


</div>

<script type="text/javascript">
function saveCalendar()
{
	
	var calid=$('#calendarname').val();
	var color=$('#calendarcolor').val();
	
	alert(calid);
	 alert(color);
	 jQuery.get("createCalendar",
			{
		     "calendarid":calid,
		      "calcolor":color
			},
			function(data)
			{
				alert(data);
				if(data!=null && data!="")
				{	
			      var cre_cal_nam = $('#calendarname').val();
			      alert(cre_cal_nam);
			      alert("hello");
				   $('.my_calender_content >ul').append('<li id="'+data+'"><div class="color_calender" style="background-color:'+ color +';"></div><span>'+ cre_cal_nam +'</span style="color: black;"></span><div class="cal_option"><img src="images/cal-open.png"></div><div class="clear"></div></li>');

				      alert("hello");
				   $("#calendar_select").append('<option value="'+data+'">'+cre_cal_nam+'</option>');
					 
				}		
				 $('.web_dialog_overlay').hide();
				 $('.create_cal').hide();
				 $('.clear_data').val("");
				  $('span.select_color').removeClass('select_color');
					  
				}
			); 	 
	// $('.clear_data').val("");
	

	}
	/* function getcalendarcolor()
	{alert("hello");
	alert($(this).css("background-color"));
		 var calendarcolor=this.css("background");
		 alert(calendarcolor);
	} */
</script>

<!-----------/// CREATE THE CALENDER END HERE ---------------->
  <div class="web_dialog_overlay"></div>
<!------------/// CREATE CALENDER POP END HERE -------------->
</body>
</html>