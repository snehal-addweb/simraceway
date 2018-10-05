<div class="slider-section owl-carousel owl-theme">
      <% if $CalendarHomeImage %>
        <div class="homeimage">
          $CalendarHomeImage.$ScaleWidth(800)
        </div>
      <% end_if %>
    </div>

	<% loop getEvents().GroupedBy(Year) %>
		<% loop Children %>
			<% include PurpleSpider/BasicCalendar/CalendarEntry %>
		<% end_loop %>
	<% end_loop %>
