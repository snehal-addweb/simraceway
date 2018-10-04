<div class="calendarentry clearfix">
	<a name="$ID"></a>
	<div class="event">
		<input type="hidden" name="Title" value="<% if Title %>$Title<% end_if %>" class="Title">
		<input type="hidden" name="date" class="date" value="<% if Date %>$Date<% end_if %>">
		<input type="hidden" name="time" class="time" value="<% if Time %>$Time<% end_if %>"">
		<input type="hidden" name="Description" class="Description" value="<% if Description %>$Description<% end_if %>">
	</div>
	<div class="hr"></div>
	<div class="container">
		<div id="bootstrapModalFullCalendar"></div>
	</div>
</div>