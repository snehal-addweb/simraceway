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
      <% if $Races %>
      <div class="racing-series-section">
        <h1>Simraceway formula 3 Summer Racing Series, 2018 Schedule</h1>
        <div class="container">
          <% loop $Races %>
              <div class="item-event">
                <div class="banner-caption upcomming-race">UPCOMMING</div>
                  <div class="banner-caption month">$StartDate.Format('MMMM')</div>
                  <div class="banner-caption date">$StartDate.Format('d') - $EndDate.Format('d')</div>
                  <div class="banner-caption image"><img src="/sonama.png"></div>
                  <div class="banner-captionrace-no">Race $Race</div>
                  <div class="banner-caption time"><span class="glyphicon glyphicon-time"></span> $StartTime - $EndTime</div>
              </div>
            <% end_loop %>
          </div>
      </div>
      <% end_if %>
    <!-- Event Section End -->
    
      <!-- About Section Start -->
      <% if $About %>
      <div class="about-car bg-img bg-square">
        <div class="container">
            <div class="row about-wrap">
              <div class="col-md-6 img-overlap">
                <div class=" about-image left-right-image">
                  $About
                </div>
              </div>
              <div class="col-md-6 img-overlap img-desc right-left-slant">
                <div class=" about-desc-tab">
                  <p class="about-car-heading">About the car</p>
                  <p class="desc-about"> $Description </p> 
                  <div class="email-num">
                    $Email
                    <span>or</span>
                    $Number
                  </div>
                </div>
              </div>
            </div>
        </div>
      </div>
      <% end_if %>
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
      
      	<!-- News section start -->
      	<!-- News section End -->
      
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
		
      	<!-- Clients Section Start -->
    	<% if $Client %>
	    	<div class="bg-img">
	      		<div class="section-our-client">
	        		<div class="container">
	          			<h1>Our Clients</h1>
	            		<div class="client-item-wrap">
	              			<% loop $Client %>
	                			<div class="item">
	                  				$ClientPhoto
	                			</div>
	              			<% end_loop %>
	            		</div>
	        		</div>
	      		</div>
	     	</div>
   	 	<% end_if %>
    	<!-- Clients Section End -->

<!-- End of Home page -->
  
   <!-- start Cars and classes Data  --> 
        <% if $AddCarsAndClasses %>
          <div class="cars-classes">
            <div class="slider-section owl-carousel owl-theme">
                <% if $Photo %>
                  <div class="homeimage cars-banner">
                    $Photo.$ScaleWidth(800)
                  </div>
                <% end_if %>
            </div>
            <div class="f-row">
              <% loop $AddCarsAndClasses %>
                <div class="car-wrap" id="big">
                  <div class="container slider">
                    <div class="car-left">
                      <h1>$Name</h1>
                        <div class="cars-desc">$Description</div>
                        <div class="card-wrap-cars">
                          <div class="cars-value-wrap">
                            <div class="classes-name"> Statistics: </div> 
                            <div class="classes-value">$Stastics</div>
                          </div>
                          <div class="cars-value-wrap">
                            <div class="classes-name">Power: </div> 
                            <div class="classes-value">$Power</div>
                          </div>
                          <div class="cars-value-wrap weight">
                            <div class="classes-name"> Weight: </div>
                            <div class="classes-value">$Weight</div>
                          </div>
                            <div class="read-more"><a>Read More</a></div>
                      </div>
                    </div>
                    <div class="car-right">
                      <div id="big1" class="photo-wrap owl-carousel owl-theme owl-loaded">
                        <ul class="item-ul">
                          <% loop $Photo %>
                            <li class="item-li right-left-slant">$ScaleWidth(800)</li>
                          <% end_loop %>
                        </ul>
                      </div>
                      <div id="thumbs1" class="photo-wrap-small owl-carousel owl-theme owl-loaded">
                        <ul class="item-ul">
                          <% loop $Photo %>
                            <li class="item-li ">$ScaleWidth(800)</li>
                          <% end_loop %>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
              <% end_loop %>
            </div>
          </div>
        <% end_if %>
    <!-- End  Cars and classes Data -->

        <!-- Stanging and result page starts -->
        <% if RaceReport %>
          <h1>Simraceway F3 Summer Racing Series, Race Reports</h1>
          <% loop $RaceReport %>
            <div class="tab">
              <button class="tablinks" onclick="openCity(event,$Race)">Race$Race - $Date.Format('MMMM') $Date.Format('d')</button>
            </div>
          <% end_loop %>
          <% loop $RaceReport %>
            <div id="$Race" class="tabcontent">
                <div class="race-name-date">Race - $Race $Name ($Date)</div>
                <div class="report-desc">$Description</div>
                $ReportPhoto.ScaleWidth(800)
                <% loop Result($ID) %>
                    <div class="FinishingPosition">$FinishingPosition</div>
                    <div class="driver">$Driver</div>
                    <div class="LapTime">$LapTime</div>
                <% end_loop %>
            </div>
          <% end_loop %>
        <% end_if %>

        
        <!-- Standing and result page End -->

       <!-- Video Section Start -->
        <% if $ClassName == 'Calendar\Component\Calendar' || $ClassName == 'Home\Component\Home' %>
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
        <% end_if %>
    <!-- Video Section End -->
  <article>
  $Form
  $comment
</div>