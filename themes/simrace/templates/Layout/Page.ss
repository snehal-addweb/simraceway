<% include SideBar %>
<div class="content-container unit size3of4 lastUnit">
	<article>
		<h1>$Title</h1>
		<!-- Home Image Start -->
		<div class="slider-section owl-carousel owl-theme">
			<% if $HomePhoto %>
				<% loop $HomePhoto %>
				<div class="homeimage">
				  $ScaleWidth(200)
				</div>
				<% end_loop %>
			<% end_if %>
		</div>
		<!-- Home Section End -->

		<!-- Event Section Start -->
			<% if $AddEvent %>
			<div class="racing-series-section">
				<div class="container">
					<% loop $AddEvent %>
				      <div class="item-event">
				       <div class="banner-caption upcomming-race">UPCOMMING</div>
				        <div class="banner-caption">$Photo</div>
				        <div class="banner-caption month">$EventName</div>
				        <div class="banner-caption date">$StartDate</div>
				        <div class="banner-caption">$EndDate</div>
				        <div class="banner-caption race-no">$StartTime</div>
				        <div class="banner-caption time">$EndTime</div>
				        <div class="banner-caption">$Race</div>
				      </div>
				    <% end_loop %>
			    </div>
			</div>
			<% end_if %>
		<!-- Event Section End -->

		<div class="bg-img">
	    <!-- Clients Section Start -->
		  <div class="section-our-client">
		  	<div class="container">
			    <% if $Client %>
			    	<h1>Our Clients</h1>
			    	<div class="client-item-wrap">
					    <% loop $Client %>
					      <div class="item">
					        $ClientPhoto
					      </div>
					    <% end_loop %>
					  </div>
				<% end_if %>
				</div>
			</div>
	    <!-- Clients Section End -->
	   </div>
	    <!-- Howtogetinvolved Section Start -->
		    <% if $AddNewGetInvolved %>
		    	<div class="client-item">
		    		<div class="container">
			    		<h1>Learn How to get Involved</h1>
			    		<div class="card-wrap">
						    <% loop $AddNewGetInvolved %>
			    				<div class="card">
							        <div class="client-caption-title">$Titles</div>
							        <div class="client-body">
								        <div class="price">$Price</div>
								        <div class="about">$About</div>
								        <button class="btn btn-plain"> signup</button>
								      </div>
					    		</div>
					    	<% end_loop %>
				    	</div>
				    </div>
		      </div>
			<% end_if %>
	    <!-- Howtogetinvolved Section End -->
	    <!-- Gallary Section Start -->
	    	
	    	<% if $Gallary %>
	    	<div class="container">
	    		<div class="gallary-section">
		    		<h1>F3 Series Highlight Gallary</h1>
	    			<div class="image-wrap">
					   	<% loop $Gallary %>
						  $ScaleWidth(300)
						<% end_loop %>
					</div>
				</div>
			</div>
			<% end_if %>
		<!-- Gallary Section End -->
	</article>
		$Form
		$CommentsForm
</div>