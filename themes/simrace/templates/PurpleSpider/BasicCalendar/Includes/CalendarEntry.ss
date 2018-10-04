<div class="container">
			<h2>Event calendar for ...... 2018</h2>
	<div class="calendar">
		<div class="calendarentry clearfix">
			<a name="$ID"></a>
			<div class="event">
				<input type="hidden" name="Title" value="<% if Title %>$Title<% end_if %>" class="Title">
				<input type="hidden" name="Status" value="<% if Status %>$Status<% end_if %>" class="Status">
				<input type="hidden" name="date" class="date" value="<% if Date %>$Date<% end_if %>">
				<input type="hidden" name="date" class="enddate" value="<% if EndDate %>$EndDate<% end_if %>">
				<input type="hidden" name="time" class="time" value="<% if Time %>$Time<% end_if %>"">
				<input type="hidden" name="time" class="endtime" value="<% if EndTime %>$EndTime<% end_if %>"">
			</div>
			<div class="hr"></div>
				<div id="bootstrapModalFullCalendar"></div>
		</div>
	</div>
</div>