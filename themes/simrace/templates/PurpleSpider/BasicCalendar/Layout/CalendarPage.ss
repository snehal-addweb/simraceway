<div class="slider-section owl-carousel owl-theme">
      <% if $CalendarHomeImage %>
        <div class="homeimage">
          $CalendarHomeImage.$ScaleWidth(800)
        </div>
      <% end_if %>
    </div>

<% if ShowPast %>
	<% if getEvents(past) %>
		<p class="pastfuture"><a href="$Link">&raquo; View Upcoming Events</a></p>
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