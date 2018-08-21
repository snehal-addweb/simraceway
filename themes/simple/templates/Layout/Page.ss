<% include SideBar %>
<div class="content-container unit size3of4 lastUnit">
	<article>
		<h1>$Title</h1>
		<!-- Home Image Start -->
			<% loop $HomePhoto %>
			  $ScaleWidth(500)
			<% end_loop %>
		<!-- Home Section End -->

		<!-- Event Section Start -->
			<% loop $AddEvent %>
		      <div class="item">
		        <div class="banner-caption">$Photo</div>
		        <div class="banner-caption">$EventName</div>
		        <div class="banner-caption">$StartDate</div>
		        <div class="banner-caption">$EndDate</div>
		        <div class="banner-caption">$StartTime</div>
		        <div class="banner-caption">$EndTime</div>
		        <div class="banner-caption">$Race</div>
		      </div>
		    <% end_loop %>
		<!-- Event Section End -->

	    <!-- Clients Section Start -->
		    <h1>Our Clients</h1>
		    <% loop $Client %>
		      <div class="item">
		        $ClientPhoto
		      </div>
		    <% end_loop %>
	    <!-- Clients Section End -->

	    <!-- Gallary Section Start -->
	    	<h1>F3 Series Highlight Gallary</h1>
		   	<% loop $Gallary %>
			  $ScaleWidth(500)
			<% end_loop %>

		<!-- Gallary Section End -->
	</article>
		$Form
		$CommentsForm
</div>