// JavaScript Document
	

jQuery(document).ready(function() {
		
	//TEST STARTED
	 $(document.body).on('click','.fc-content',function(){
		 var uid=($(this).attr('id'));
		 var calendarname=($(this).attr('name'));
		 
		 alert(calendarname);
		 alert(uid);
		 
		 jQuery.get("geteventdetails",
					{
				     "uid":uid,
				      "calendarname":calendarname
					},
					function(data)
					{
						$('#editeventheader').html("Edit Event");
						$('#summary').val(data.summary);
						$('#location').val(data.location);
						$('#description').val(data.description);
						$('#startdate').val(data.start);
						$('#enddate').val(data.end);
						$('#calendar_select').val(data.calendar);
						$('#clazz').val(data.clazz);
						$('#frequency').val(data.frequency);
						$('#count').val(data.count);
						$('#until').val(data.until);
						alert(data.reminderdata);
						var reminderdata=data.reminderdata.split(";");
						alert(reminderdata.length);
						$('.new_reminder').append('<tbody>');
						for(j=0;j<reminderdata.length;j++)
						{
							count++;
						   var reminders=reminderdata[j].split("`");
						   if(reminders[1]!= undefined)
						{
						   $('.new_reminder').append('<tr id="'+count+'"><td><img src="images/new_reminder.png" /></td><td><select id="remindertype'+count+'" ><option>Email</option><option>Pop-up</option></select><input type="text" class="reminder_time" id="remindertime'+count+'"  /><select id="reminderduration'+count+'" ><option value="M">minutes</option><option value="H">hours</option><option value="D">days</option><option value="W">weeks</option></select></td><td class="delete_reminder del_rem"><img src="images/tool.png" /></td></tr>');
						   $('#remindertype'+count).val(reminders[0]) ; 
						   $('#remindertime'+count).val(reminders[1]) ; 
						   $('#reminderduration'+count).val(reminders[2]) ; 
						   remindercounter=remindercounter+count+",";
						}
						} 
						$('.new_reminder').append('</tbody>');
						$('#counter').val(remindercounter);
						$('#uid').val(data.eventuid);
					});

	        		             
			/*var cal_val = $(this).children('.fc-title').html();
			var cal_time = $(this).children('.fc-time').html();*/
			
			//$('.location').val("Hello");
			//alert(cal_val);
			 
			if($('.calender_pop').css('display')=='none')
				{
			
					$('.calender_pop').css('display','block');
					 $('.web_dialog_overlay').show();
					 $('.calender_option').hide();
									
		
				}
			/*var showVar = '<c:out value="${test}"/>';
			   alert(showVar);*/
	 });	
		
	//TEST END
	
	   
	        
		///  TEST STRED HERE
		
			///  GENERAL OPTION STRED HERE 
			
			 $(document.body).on('focus','.date_stared',function(){
				  
				   alert('Hi');
					
					     $('.dymaic_am').show();
						 var leftPos = $(this).offset().left;
						 var topPos = $(this).offset().top;
						 alert(leftPos);
						 alert(topPos);
						$('input.sel_val').removeClass('sel_val');
						 $('.remi_date_opt').css('left',leftPos-604);
						 $('.remi_date_opt').css('top',topPos-190+7);
						 $(this).addClass('sel_val');
				  });
		/// GENERAL OPTION END HERE 
		
		
		/// TEST FOR ON HIDE DIV ON CLICK BODY 
		
	
 
		
		
		//// TEST FOR ON HIDE DIV ON CLICK BODY
		
		
		
		
		
		
		
		
		
		
		
		
		///  TEST END HERE 
			/*
			  $(document.body).on('focus','.reminder_time',function(){
				  
				     // alert('Hi');
					
					     $('.dymaic_am').show();
						 var leftPos = $(this).offset().left;
						 var topPos = $(this).offset().top;
						// alert(leftPos);
						// alert(topPos);
						$('input.sel_val').removeClass('sel_val');
						 $('.remi_date_opt').css('left',leftPos-604);
						 $('.remi_date_opt').css('top',topPos-190);
						 $(this).addClass('sel_val');
						 
				  
				  
				  
				  });*/
			
			
	
				//	$(document.body).on('focusout','.reminder_time',function(){
			  /// $('.reminder_time').focusout(function() {
				   
				  // alert('By');
					
					     //$('.dymaic_am').hide();
				//	 setTimeout(function() { 
                    //    $('.dymaic_am').hide();}, 100); 
					
				//	});
			
	
	
	
	
	/// FIND THE VALUE 
	$(document.body).on('click','.amvalue',function(){
	
	      window.findhtm = $(this).html();
		  alert(findhtm);
		  $('.sel_val').val(findhtm);
		  $('.dymaic_am').hide();
		  //$(this).parent().parent().parent().find('table.new_reminder').children().children().children().addClass('Hi');
	
	});
	
	
	/// 
	$(document.body).on('mouseover','.dymaic_am',function(){
		
		$('.dymaic_am').show();
		
		
		});
	
	
	

	
	     /// ++++++++++++++++++++++++++++ REMINDER ALERT STRED HERE 
		 
		 $('.save_cal').click(function(){
		 
		 var find_time = (new Date).getTime();
		 
		 
		    var d = new Date();    /// DATE 
			
		var weekday = new Array(7);
        weekday[0] = "Sunday";
        weekday[1] = "Monday";
		weekday[2] = "Tuesday";
		weekday[3] = "Wednesday";
		weekday[4] = "Thursday";
		weekday[5] = "Friday";
		weekday[6] = "Saturday";

         var x = weekday[d.getDay()]; /// SYSTEM WEEK
			
			
			var e =d.getDay();   /// SYSTEM DAY
            var y =d.getHours();   /// SYSTEM HOURS
            var z = d.getMinutes() /// SYSTEM MINITUE
		// alert(x);
		 // GET TIME FOR GIVEN MINITUE ,HOUR,DAY,WEEKAND
		 var find_re_time = $('.reminder_time').val();
		// alert(find_re_time);
		 /// FIND OPTION VALUE STRED
		 var sel_rem_opt = $('.sel_remin_opt').val();
		 var minitue = $('.minutes').val();
		 var hours = $('.hours').val();
		 var day = $('.day').val();
		 var week = $('.week').val();
		 /// FIND OPTION VALUE END HERE 
		// alert(sel_rem_opt);
		 
		 // SET REMINDER OPTION 
		 if(sel_rem_opt == minitue)
		 { 
		// alert('You Select MINITE ');
		 
		  var total_minute = parseInt(z) + parseInt(find_re_time);
		//  alert(z);
		//  alert(total_minute);
		      if( z == total_minute )
			  {
				 //  alert('Please Check The Mail Time !-say Reminder');
				  
				  }
		 
		 
		 }
		 else if(sel_rem_opt == hours)
		 {//alert('You Select Hours ')
		 ;}
		 else if(sel_rem_opt == day)
		 {//alert('You Select Day ')
		 ;}
		 else if(sel_rem_opt == week)
		 {//alert('You Select Weeks ')
		 ;}
		 
		 
		 
		 
		 // SET REMINDER END HERE 
		 
		 
		 
		 
		 
		 
		 });
		 /// +++++++++++++++++++++ REMINDER END HERE 
	
	    
	
	
	
	      // DELETE REMINDER STRED HERE 
		  $(document.body).on('click','.del_rem',function(){
			  
			     alert('Hi');
				   var ask_delet = confirm('Are You Sure !');
				   if(ask_delet==true)
				   {
					   var rid=($(this).parent().attr('id'));
					   remindercounter=remindercounter.replace(rid+",","");
					   alert(remindercounter);
					   alert(($(this).parent().attr('id')));
				      $(this).parent().remove();
				   }
			  
			  });

		  
		  /// DELETE REMINDER END HERE 
		  
		  /// ADDD NEW REMINDER STRED HERE 
		  var count=0;
		  var remindercounter="";
		  /*$('.reminder_cal >table >tbody >tr >td >span').click(function(){*/
			  $(document.body).on('click','.reminder_cal >table >tbody >tr >td >span',function(){	
				alert(remindercounter);  /*remindercounter=$('#reminderdata').val();*/
			  count++;
			  remindercounter=remindercounter+count+",";
			  alert(remindercounter);
			       
				   $('table.new_reminder').append('<tr id="'+count+'"><td><img src="images/new_reminder.png" /></td><td><select id="remindertype'+count+'"><option>Email</option><option>Pop-up</option></select><input type="text" class="reminder_time" id="remindertime'+count+'" /><select id="reminderduration'+count+'"><option value="M">minutes</option><option value="H">hours</option><option value="D">days</option><option value="W">weeks</option></select></td><td class="delete_reminder del_rem"><img src="images/tool.png" /></td></tr>');
			    
			  $('#counter').val(remindercounter);
			  });
		  
		  /// ADDD NEW REMINDER END HERE 
		  
	
	
	
	    /// SELECT ALL GUEST 
		
		
		  $(".select_guest").click(function () {
								// alert('By');
                                  $('.guest_content_11 >table >tbody >tr >td >input:checkbox').prop('checked', this.checked);   
                             });
							 
							 
		  $('.close_guest_1').click(function(){
			  
			      // alert('Hi');
				  // $('.guest_content_11 >table >tbody >tr >td >input:checkbox').prop('checked', this.checked).hide();
				   var count_guest = $(".guest_content_11 >table >tbody >tr >td >[type='checkbox']:checked").length;
				  // alert(count_guest);
				   if(count_guest)
				   {
					    // alert('Hello This Test');
						 $('.row_guest').hide();
					   
					   }
			  
			  });
		
		
		/// SELECT ALL GUEST END HERE 
	
	
	
	
	
	
	   /// ADDD GUEST STRED HERE 
	   
	   $('.add_guest').click(function(){
		   
		     var guestname = $('.add_guest_name').val();
			 
			 if($('.add_guest_name').val()=='')
			 {
				 
				 alert('Give Name Please !')
				 
				 
				 }else {
					 
					 		// alert(guestname);
			 $('.guest_content_11 >table.append_guest >tbody').append('<tr class="add_name row_guest"><td colspan="2"><input type="checkbox" /> <span>'+guestname+'</span></td><td><div class="close_guest"><img src="images/tool.png" /></div></td></tr>')
		     $('.add_guest_name').val('');
					 
					 
					 
					 
					 }
			 
			 
	
		   });
		   
	   /// DELETE GUEST HERE 
	   
	     $(document.body).on('click', '.close_guest >img' ,function(){
			 
			    // alert('Hi');
				// confirm("Are You Sure !");
				var confiirm = confirm("Are You Sure !");
				
				if(confiirm==true)
				{
					
					$(this).parent().parent().parent().hide();
					
			      }

				 
		
				 
				 /// TEST 
				 
				 /// TEST END 
			 
			 });
			 
			 
			 
			 
			 /// TEST STRAED HERE 
			 
			 
			 var confirmed = false;
function confirmDialog(obj)
{
    
}
			 
			 
			 /// TEST END HERE 
	   
	   
	   
	   /// ADD GUEST END HERE
	
	
	
	
	
	 
         /// CHOOSE CUSTOM COLOR 
		 
		 $('.choose_custom').click(function(){
			 
			   // alert('Hi');
				if($('.custom_color').css('display')=='none')
				{
					$('.custom_color').css('display','block');
					$('.choose_custom').addClass('active_custom');
					
			    }
				else {
					 $('.custom_color').css('display','none');
					 $('.choose_custom').removeClass('active_custom');
					// $('.choose_custom').css('background','#fff;');
					
					}
			 
			 });
		 
		 
		 
		 
	
	/// CALENDER TOP OPTION STRAED HERE
	
	
	// OPTION 1 STARTD
	$('.first_cal_option').click(function(){
		
		         if($('.create_cal').css('display')=='none')
				 {
					 
					 $('.web_dialog_overlay').show();
					 $('.create_cal').css('display','block');
					 
				  }
		
		});
		
		$('.create_cal >.pop_header >span').click(function(){
			
			     
			
			        $('.web_dialog_overlay').hide();
					 $('.create_cal').hide();
					 $('.clear_data').val("");
					  $('span.select_color').removeClass('select_color');
					 
					
					
			});
			
	  $('.cancel_cal_1').click(function(){
			
			     
			        $('.web_dialog_overlay').hide();
					 $('.create_cal').hide();
					 $('.clear_data').val("");
					  $('span.select_color').removeClass('select_color');
			
	  });
	  
	  
	 /* 
	  $('.save_cal_1').click(function(){
			 
	      // alert(displayColor);
		 //  alert();
		  // alert(applyOptions);
		  // alert(colorInput.value);
		  //[r,g,b] = displayColor;
		  var cre_cal_nam = $('.dis_name').val();
		 // alert(cre_cal_nam);
		   
		 //var cal_col_di = $('.color_calender').css('background',displayColor);
		   //find('.sp-preview-inner').addClass('hi');
		   $('.my_calender_content >ul').append('<li><div class="color_calender" style="background:'+ background +';"></div><span>'+ cre_cal_nam +'</span><div class="cal_option"><img src="images/cal-open.png"></div><div class="clear"></div></li>');
		    $('.create_cal').hide();
			$('.dis_name').val('');
			  $('.web_dialog_overlay').hide();
			  $('span.select_color').removeClass('select_color');
		  // alert(rgb);
	 
	 });*/

	
	
	// OPTION 2 STARTD
	
	
	
	
	// OPTION 3 STARTD 
	$('.create_event').click(function(){	
		
	if($('.calender_pop').css('display')=='none')
				{
		$('#editeventheader').html("Create Event");
					$('.calender_pop').css('display','block');
					 $('.web_dialog_overlay').show();
					 $('.calender_option').hide();
					
					
			}
			});
			
			
	
	/// CALENDER TOP OPTION END HERE
	
	/// TEST CANCEL CALENDER 
	
		$('.pop_header >span').click(function(){
		
		 $('.calender_pop').hide(500);
		 $('.web_dialog_overlay').hide();
		 $('.clear_data').val("");
		 $('#defaultremindertable').html('<table><tbody><tr><td colspan="2" class="new_line">This event has no configured reminders</td></tr><tr><td colspan="2" class="new_line_1">New reminder:</td></tr><tr><td colspan="3"><span>Add New</span></td></tr></tbody></table>');
		 $('.new_reminder').html("");
		 
		 
        
		
		});
	
	$('.cancel_cal').click(function(){
	
		 $('.calender_pop').hide(500);
		  $('.web_dialog_overlay').hide();
		  $('.clear_data').val("");
			 $('#defaultremindertable').html('<table><tbody><tr><td colspan="2" class="new_line">This event has no configured reminders</td></tr><tr><td colspan="2" class="new_line_1">New reminder:</td></tr><tr><td colspan="3"><span>Add New</span></td></tr></tbody></table>');
           $('.new_reminder').html("");
		
		});
	
	
	
	/// CALENDER POP UP STARED HERE
	
	// GENERAL OPTION
	$('.gen_opt').click(function(){
		
		    if($('.gen_content').css('display')=='block' || $('.gen_content').css('display')=='none')
			{
				$('.gen_content').css('display','block');
				$('.repeat_cal').css('display','none');
				$('.reminder_cal').css('display','none');
				$('.workgroup_cal').css('display','none');
				$('.repe').removeClass('repe_active');
				$('.remind').removeClass('remind_active');
				$('.work_g').removeClass('work_active');
				$('.gen_opt').addClass('gen_active');
				
			 }
		
		});
	 /// GENERAL OPTION END HERE 
	 
	 
	 // REPEAT OPTION STARED HERE 
	 $('.repe').click(function(){
		
		    if($('.repeat_cal').css('display')=='none')
			{
				$('.repeat_cal').css('display','block');
				//$('.repeat_cal').css('display','none');
				$('.reminder_cal').css('display','none');
				$('.workgroup_cal').css('display','none');
				$('.gen_content').css('display','none');
				$('.repe').addClass('repe_active');
				$('.gen_opt').removeClass('gen_active');
				$('.remind').removeClass('remind_active');
				$('.work_g').removeClass('work_active');
				
			 }
		
		});
	 
	 // REPEAT OPTION END HERE
	 
	 
	 	 // REPEAT OPTION STARED HERE 
	 $('.remind').click(function(){
		
		    if($('.reminder_cal').css('display')=='none')
			{
				$('.reminder_cal').css('display','block');
				$('.repeat_cal').css('display','none');
				//$('.reminder_cal').css('display','none');
				$('.workgroup_cal').css('display','none');
				$('.gen_content').css('display','none');
				$('.remind').addClass('remind_active');
				$('.repe').removeClass('repe_active');
				$('.gen_opt').removeClass('gen_active');
				$('.work_g').removeClass('work_active');
				
			 }
		
		});
	 
	 // REPEAT OPTION END HERE
	 
	 
	  	 // WORKGROUP OPTION STARED HERE 
	 $('.work_g').click(function(){
		
		    if($('.workgroup_cal').css('display')=='none')
			{
				$('.workgroup_cal').css('display','block');
				$('.repeat_cal').css('display','none');
				$('.reminder_cal').css('display','none');
				//$('.workgroup_cal').css('display','none');
				$('.gen_content').css('display','none');
				$('.work_g').addClass('work_active');
				$('.remind').removeClass('remind_active');
				$('.repe').removeClass('repe_active');
				$('.gen_opt').removeClass('gen_active');
				
			 }
		
		});
	 
	 // REPEAT OPTION END HERE
	 
	 
	/// CALENDER POP UP END HERE 
	
	
	
	
	
	
	
	
	
	
	//// JS FOR CALENDER STRED HERE 
	
	///////////////////////////////////////////
	///                                    ///
	///    ONLY FOR MY CALENDER OPTION     ///
	///                                    ///
	/////////////////////////////////////////
	
	/// CALENDER OPTION HERE 
	$(document.body).on('click', '.cal_option' ,function(){
	//$('.cal_option').click(function(){
		//alert('Hi');
		
		       $('div.hi').removeClass('hi');
			   $('div.select_arrow').removeClass('select_arrow');
			   
		       var cho_arrow =  $(this).parent().parent().parent().children('.calender_option').addClass('show_option');
			   $(this).parent().children('.color_calender').addClass('select_arrow');
			   
			   //  var cho_arrow =  $(this)
			   var cho_box_left = $(this).offset().left ;
			   var cho_box_top = $(this).offset().top ;
			    $('.show_option').css('top',cho_box_top - 85);
		        $('.show_option').css('left',cho_box_left - 64); 
				//alert(cho_box_top);
				 $('.show_option').slideToggle("slow");
				  $('.other_calender_option').hide("slow");
				  // TEST 
				 // var new_color_find = $(this).parent().children().find('.select_arrow').background;
				//  alert(new_color_find);
				  // TEST
				//  alert(select_arrow_color);
				//  $('div.color_calender').find('.select_arrow').alert('hi');
				  
				//var find_color = $('.select_arrow').attr('style');
				//alert(find_color);
				
				/// TEST STTARED HERE 
				
			    var find_select_color = $('.select_arrow').css('background');
				var find_other_1 = $('.color_1').css('background');
				var find_other_2 = $('.color_2').css('background');
				var find_other_3 = $('.color_3').css('background');
				var find_other_4 = $('.color_4').css('background');
				var find_other_5 = $('.color_5').css('background');
				var find_other_6 = $('.color_6').css('background');
				var find_other_7 = $('.color_7').css('background');
				var find_other_8 = $('.color_8').css('background');
				var find_other_9 = $('.color_9').css('background');
				var find_other_10 = $('.color_10').css('background');
				var find_other_11 = $('.color_11').css('background');
				var find_other_12 = $('.color_12').css('background');
				if(find_select_color == find_other_1)
				{
					$('span.select_color').removeClass('select_color');
					$('.color_1>span').addClass('select_color');
					
			     }else if(find_select_color == find_other_2)
				{
					$('span.select_color').removeClass('select_color');
					$('.color_2>span').addClass('select_color');
					
			     }else if(find_select_color == find_other_3)
				{
					$('span.select_color').removeClass('select_color');
					$('.color_3>span').addClass('select_color');
					
			     }else if(find_select_color == find_other_4)
				{
					$('span.select_color').removeClass('select_color');
					$('.color_4>span').addClass('select_color');
					
			     } else if(find_select_color == find_other_5)
				{
					$('span.select_color').removeClass('select_color');
					$('.color_5>span').addClass('select_color');
					
			     }else if(find_select_color == find_other_6)
				{
					$('span.select_color').removeClass('select_color');
					$('.color_6>span').addClass('select_color');
					
			     } else if(find_select_color == find_other_7)
				{
					$('span.select_color').removeClass('select_color');
					$('.color_7>span').addClass('select_color');
					
			     } else if(find_select_color == find_other_8)
				{
					$('span.select_color').removeClass('select_color');
					$('.color_8>span').addClass('select_color');
					
			     }else if(find_select_color == find_other_9)
				{
					$('span.select_color').removeClass('select_color');
					$('.color_9>span').addClass('select_color');
					
			     }else if(find_select_color == find_other_10)
				{
					$('span.select_color').removeClass('select_color');
					$('.color_10>span').addClass('select_color');
					
			     }else if(find_select_color == find_other_11)
				{
					$('span.select_color').removeClass('select_color');
					$('.color_11>span').addClass('select_color');
					
			     }else if(find_select_color == find_other_12)
				{
					$('span.select_color').removeClass('select_color');
					$('.color_12>span').addClass('select_color');
					
			     }
				 
				
				/// TEST END HERE 
				
				
				
				/// TEST 
				
				$('.sp-choose').addClass('custom_color_find');
				
				
				// TEST 
				
				
				
				 
		
		});
		
		

		
		
		
		
		
		
	
	
	/// My calender 
	$('.my_claender').click(function(){
		
						//$('.my_calender_content').slideToggle("slow");
						if($('.my_calender_content').css('display')=='block')
						{
							$('.my_calender_content').hide();
							$('.my_claender').addClass('bottom_arrow');
						}
						else
						{
							$('.my_calender_content').show();
							$('.my_claender').removeClass('bottom_arrow');
						 }
		
		});
	
    ///////////////////////////////////////////
	///                                    ///
	///   ONLY FOR MY CALENDER OPTION END  ///
	///                                    ///
	/////////////////////////////////////////
	
	
	
	
	 ////////////////////////////////////////////////
	///                                           ///
	///   ONLY FOR OTHER CALENDER OPTION STRAED   ///
	///                                           ///
	////////////////////////////////////////////////
	
	/// OTHER CALENDER OPTION HERE 
	//$('.other_cal_option').click(function(){
		
		  //    if($('.other_calender_option').css('display')=='none')
			//  {
				  
				//  $('.other_calender_option').css('display','block');
				  
		//	 }
		//	 else
			// {
				//  $('.other_calender_option').css('display','none');
				 
			//  }
		
	//	});
	
	
		$(document.body).on('click', '.other_cal_option' ,function(){
	//$('.cal_option').click(function(){
		//alert('Hi');
		
		       $('div.hi').removeClass('hi');
			   
		       var other_cho_arrow =  $(this).parent().parent().parent().children('.other_calender_option').addClass('other_show_option');
			   
			   //  var cho_arrow =  $(this)
			   var other_cho_box_left = $(this).offset().left ;
			   var other_cho_box_top = $(this).offset().top ;
			    $('.other_show_option').css('top',other_cho_box_top - 85);
		        $('.other_show_option').css('left',other_cho_box_left - 64); 
				//alert(cho_box_top);
				 $('.other_show_option').slideToggle("slow")
				 $('.calender_option').hide("slow");
				 
				 
				 
				
		
		});
	
	
	
	
	
	
	
	
	
	/// OTHER My calender 
	$('.other_claender').click(function(){
		
						//$('.my_calender_content').slideToggle("slow");
						if($('.other_calender_content').css('display')=='none')
						{
							$('.other_calender_content').show();
							$('.other_claender').addClass('other_bottom_arrow');
						}
						else
						{
							$('.other_calender_content').hide();
							$('.other_claender').removeClass('other_bottom_arrow');
						 }
		
		});
	
	
	
	//// CREATE CALENDER 
	
	
	/////////////////////////////////////////////
	///                                        ///
	///   ONLY FOR OTHER CALENDER OPTION END   ///
	///                                        ///
	/////////////////////////////////////////////
	
	//$('.create_calender').click(function(){
		
		
		/// TEST STARED HERE
				
		$('.color_find').click(function(){
			
			  $('span.select_color').removeClass('select_color');
			  window.background = $(this).css('background');
			  $(this).children().addClass('select_color');
			  $('.select_arrow').css('background',background);
			  $('.calender_option').hide();

			});
		
		
		/// TEST END HERE 
		$('.color_find').click(function(){
			
			 // alert('Hi');
			// $(this).css('backgroundColor');
			///rgb2hex($(this).css('background-color'))
			//match = fing_color;
			//alert(match);
			
			// TEST STRED 
			
			// NEW CODE STRED HERE 
			
			
			$.cssHooks.backgroundColor = {
   get: function(elem) {
       if (elem.currentStyle)
           var bg = elem.currentStyle["background-color"];
       else if (window.getComputedStyle)
           var bg = document.defaultView.getComputedStyle(elem,
               null).getPropertyValue("background-color");
       if (bg.search("rgb") == -1)
           return bg;
       else {
           bg = bg.match(/^rgb\((\d+),\s*(\d+),\s*(\d+)\)$/);
           function hex(x) {
               return ("0" + parseInt(x).toString(16)).slice(-2);
           }
           return "#" + hex(bg[1]) + hex(bg[2]) + hex(bg[3]);
       }
   }
}

/// NEW CODE END HERE

     var fing_color =   $(this).css("backgroundColor") ;
			$('#calendarcolor').val(fing_color);
			/// TEST END 
			
			
			
			
			
		alert(fing_color);
			
			});
		// TSET 
		
		
		
		
		     
		
		//});
		});
		
		
		///  JS SCRIPT COLOR FOR CALENDER STRAED HERE 

		