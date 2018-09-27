<% require css("purplespider/basic-calendar: client/dist/css/calendar.css") %>
<div class="content-container unit size3of4 lastUnit">
	<article>
		<div class="slider-section owl-carousel owl-theme">
				<div class="homeimage">
				  $About.$ScaleWidth(200)
				</div>
			
		</div>
		<% if ShowPast %>
	
			<% if getEvents(past) %>

				<p class="pastfuture"><a href="$Link">&raquo; View Upcoming Events</a></p>

				<h2>Past Events</h2>

					<% loop getEvents(past).GroupedBy(Year) %>

						<% loop Children %>
							<% include PurpleSpider/BasicCalendar/CalendarEntry %>
						<% end_loop %>

				<% end_loop %>


			<% else %>

			<p><strong>There are no upcoming events.</strong></p>

			<% end_if %>

		<% else %>

			<% if getEvents(past) %><p class="pastfuture"><a href="$Link?past">&raquo; View Past Events</a></p><% end_if %>
			<h2>Upcoming Events</h2>
			<% if getEvents(future) %>

					<% loop getEvents(future).GroupedBy(Year) %>

						<% loop Children %>
							<% include PurpleSpider/BasicCalendar/CalendarEntry %>
						<% end_loop %>

				<% end_loop %>


			<% else %>

			<p><strong>There are no upcoming events.</strong></p>

			<% end_if %>

		<% end_if %>
	</article>
		$Form
		$CommentsForm
</div>


