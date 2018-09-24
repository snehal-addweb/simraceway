<% include SideBar %>
<div class="content-container unit size3of4 lastUnit">
	<article>
		<!-- Home Image Start -->
		<div class="slider-section owl-carousel owl-theme">
			<% if $HomePhoto %>
				<% loop $HomePhoto %>
				<div class="homeimage">
				  $ScaleWidth(800)
				</div>
				<% end_loop %>
			<% end_if %>
		</div>
		<!-- Home Section End -->

		<!-- Event Section Start -->
			<% if $AddEvent %>
			<div class="racing-series-section">
				<h1>Simraceway formula 3 Summer Racing Series, 2018 Schedule</h1>
				<div class="container">
					<% loop $AddEvent %>
				    	<div class="item-event">
				    		<div class="banner-caption upcomming-race">UPCOMMING</div>
				       		<div class="banner-caption month">$StartDate.Format('MMMM')</div>
				       		<div class="banner-caption date">$StartDate.Format('d') - $EndDate.Format('d')</div>
				        	<div class="banner-caption">$Photo</div>
					        <div class="banner-captionrace-no">Race $Race</div>
					        <?php echo"DFF"; ?>
					        <div class="banner-caption time"><span class="glyphicon glyphicon-time"></span> $StartDate.Format('HH:mm') - $EndDate.Format('HH:mm')</div>
				      </div>
				    <% end_loop %>
			    </div>
			</div>
			<% end_if %>
		<!-- Event Section End -->



	    <!-- About Section Start -->
			<div class="about-car">
				<div class="container">
		    	<% if $About %>
			    	<div class="row about-wrap">
				    	<div class="col-md-6">
				    		<div class=" about-image">
				    			$About
				    		</div>
				    	</div>
				    	<div class="col-md-6 img-desc left-right-slant">
				    		<div class=" about-desc-tab">
				    			<p class="about-car-heading">About the car</p>
						    	<p class="desc-about"> $Description </p> 
						    	<div class="email-num">
						    		$Number
						    		$Email
						    	</div>
						    </div>
					    </div>
					  </div>
					<% end_if %>
				</div>
			</div>
	    <!-- About Section End -->

	    <!-- Howtogetinvolved Section Start -->
		    <% if $AddNewGetInvolved %>
		    	<div class="get-involved">
		    		<div class="container">
			    		<h1>Learn How to get Involved</h1>
			    		<div class="card-wrap">
						    <% loop $AddNewGetInvolved %>
			    				<div class="card">
							        <div class="client-caption-title">$Titles</div>
							        <div class="client-body">
								        <div class="price">$Price</div>
								        <div class="about">$About</div>
								        <button class="btn btn-plain">signup</button>
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
						  $ScaleWidth(800)
						<% end_loop %>
					</div>
				</div>
			</div>
			<% end_if %>
			<!-- Gallary Section End -->

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
	    

	    <!-- start Cars and classes page  -->	
	    	<% if $AddCarsAndClasses %>
    			<div class="cars-classes">
    				<div class="container">
			    		<% loop $AddCarsAndClasses %>
				    		<h1>$Name</h1>
				    		<div class="card-wrap-cars">
						        <div class="cars-desc">$Description</div>
						        Statistics: <div class="statistics">$Stastics</div>
						        Power: <div class="power">$Power</div>
						        Weight: <div class="weight">$Weight</div>
						        <div class="read-more"><a>Read More</a></div>
						        <div class="image-wrap">
								   	<% loop $Photos %>
									  $ScaleWidth(800)
									<% end_loop %>
								</div>
							</div>
						<% end_loop %>
					</div>
				</div>
			<% end_if %>

					    

	    <!-- End  Cars and classes page -->
		<!-- Video Section Start -->
		    	<div class="latest-video">
		    		<h1>Latest Video's</h1>
	    			<div class="image-wrap">
					   	<iframe width="300" height="300" src="https://www.youtube.com/embed/rvv8eITIiqA" frameborder="0" allow="autoplay"></iframe>
					   	<iframe width="300" height="300" src="https://www.youtube.com/embed/lz_IcktOR6U" frameborder="0" allow="autoplay"></iframe>
					   	<iframe width="300" height="300" src="https://www.youtube.com/embed/lz_IcktOR6U" frameborder="0" allow="autoplay"></iframe>
					</div>
					<button class="btn btn-plain">VIEW ALL MEDIA</button>
				</div>
		<!-- Video Section End -->
	</article>
		$Form
		$CommentsForm
</div>