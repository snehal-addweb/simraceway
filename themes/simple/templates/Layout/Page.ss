<% include SideBar %>
<div class="content-container unit size3of4 lastUnit">
	<article>
		<h1>$Title</h1>
		<!-- Home Image Start -->
			<% if $HomePhoto %>
				<% loop $HomePhoto %>
				  $ScaleWidth(200)
				<% end_loop %>
			<% end_if %>
		<!-- Home Section End -->

		<!-- Event Section Start -->
			<% if $AddEvent %>
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
			<% end_if %>
		<!-- Event Section End -->

	    <!-- Clients Section Start -->
		    
		    <% if $Client %>
		    	<h1>Our Clients</h1>
			    <% loop $Client %>
			      <div class="item">
			        $ClientPhoto
			      </div>
			    <% end_loop %>
			<% end_if %>
	    <!-- Clients Section End -->

	    <!-- Howtogetinvolved Section Start -->
		    <% if $AddNewGetInvolved %>
		    	<h1>Learn How to get Involved</h1>
			    <% loop $AddNewGetInvolved %>
			      <div class="item">
			        <div class="banner-caption">$Titles</div>
			        <div class="banner-caption">$Price</div>
			        <div class="banner-caption">$About</div>
			      </div>
			    <% end_loop %>
			<% end_if %>
	    <!-- Howtogetinvolved Section End -->
	    <!-- Gallary Section Start -->
	    	
	    	<% if $Gallary %>
	    		<h1>F3 Series Highlight Gallary</h1>
			   	<% loop $Gallary %>
				  $ScaleWidth(300)
				<% end_loop %>
			<% end_if %>
		<!-- Gallary Section End -->
	</article>
		$Form
		$CommentsForm
</div>