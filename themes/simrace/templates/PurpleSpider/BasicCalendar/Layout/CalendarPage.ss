<div class="slider-section owl-carousel owl-theme">
      <% if $CalendarHomeImage %>
        <div class="homeimage">
          $CalendarHomeImage.$ScaleWidth(800)
        </div>
      <% end_if %>
    </div>
    <h2>Event calendar for october 2018</h2>
	<% loop getEvents().GroupedBy(Year) %>
		<% loop Children %>
			<% include PurpleSpider/BasicCalendar/CalendarEntry %>
		<% end_loop %>
	<% end_loop %>
	<div class="latest-video">
	      <h1>Latest Video's</h1>
	      <div class="image-wrap">
	        <iframe width="300" height="300" src="https://www.youtube.com/embed/rvv8eITIiqA" frameborder="0" allow="autoplay"></iframe>
	        <iframe width="300" height="300" src="https://www.youtube.com/embed/lz_IcktOR6U" frameborder="0" allow="autoplay"></iframe>
	        <iframe width="300" height="300" src="https://www.youtube.com/embed/lz_IcktOR6U" frameborder="0" allow="autoplay"></iframe>
	        <iframe width="300" height="300" src="https://www.youtube.com/embed/lz_IcktOR6U" frameborder="0" allow="autoplay"></iframe>
	      </div>
	      <button class="btn btn-plain">VIEW ALL MEDIA</button>
    </div>