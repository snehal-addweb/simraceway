<!DOCTYPE html>
<!--
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Simple. by Sara (saratusar.com, @saratusar) for Innovatif - an awesome Slovenia-based digital agency (innovatif.com/en)
Change it, enhance it and most importantly enjoy it!
>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
-->

<!--[if !IE]><!-->
<html lang="$ContentLocale">
<!--<![endif]-->
<!--[if IE 6 ]><html lang="$ContentLocale" class="ie ie6"><![endif]-->
<!--[if IE 7 ]><html lang="$ContentLocale" class="ie ie7"><![endif]-->
<!--[if IE 8 ]><html lang="$ContentLocale" class="ie ie8"><![endif]-->
<head>
	<% base_tag %>
	<title><% if $MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	$MetaTags(false)
	<!--[if lt IE 9]>
	<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
	<% require themedCSS('bootstrap') %>
	<% require themedCSS('bootstrap.min') %>
	<% require themedCSS('bootstrap-theme') %>
	<% require themedCSS('owl.carousel.min') %>
	<% require themedCSS('owl.theme.default.min') %>
	<% require themedCSS('main') %>
	<% require themedCSS('fullcalendar') %>
	
	<link rel="shortcut icon" href="themes/simrace/images/favicon.ico" />
	
</head>
<body class="$ClassName.ShortName<% if not $Menu(2) %> no-sidebar<% end_if %>" <% if $i18nScriptDirection %>dir="$i18nScriptDirection"<% end_if %>>
<% include Header %>
<div class="main" role="main">
	<div class="main-container">
		$Layout
	</div>
</div>
<% include Footer %>

<% require javascript('//code.jquery.com/jquery-3.3.1.min.js') %>
<% require themedJavascript('owl.carousel.js') %>
<% require themedJavascript('script') %>
<% require themedJavascript('slider') %>
<% require themedJavascript('moment') %>
<% require themedJavascript('jquery-ui.min') %>
<% require themedJavascript('fullcalendar') %>
<script type="text/javascript">
	jQuery.noConflict();

		(function($) {

		$(document).ready(function() {
			var myElements = $(".event");
			var eventsArray = Array();
		    for (var i=0;i<myElements.length;i++) {
		        eventsArray.push({
		 			allDay:true,
	                title: '<div class="event-title"> ' + $(".Title").eq(i).attr("value")+' </div>' + '<div class="event-Status"> ' + $(".Status").eq(i).attr("value")+' </div>' + '<div class="event-time"> ' + $(".time").eq(i).attr("value")+' - ' + $(".endtime").eq(i).attr("value")+' </div>',
	                start: $(".date").eq(i).attr("value"),
	                end: $(".enddate").eq(i).attr("value"),
	            })
		    }
		    console.log(eventsArray);
		    $('#bootstrapModalFullCalendar').fullCalendar({
		    	header: {
					left: '',
					center: 'prev title next',
					right: ''
				},

				eventLimit: 3,
		            views: {
		              agenda: {
		                eventLimit: true, 
		              }
		        	},
				events:eventsArray,
				eventRender: function( event, element, view ) {
				 	var title = element.find( '.fc-title' );
					title.html( title.text() );
				}


			});
		});
}(jQuery));
</script>
</body>
</html>

