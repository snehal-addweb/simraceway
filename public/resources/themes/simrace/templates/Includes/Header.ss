<!-- <header class="header" role="banner">
	<div class="container">
		<div class="unit size4of4 lastUnit">
			<a href="$BaseHref" class="brand" rel="home">
				<% if $SiteConfig.Tagline %>
				<p>$SiteConfig.Tagline</p>
				<% end_if %>
				<h1>$SiteConfig.Title</h1>
				
			</a>
			<% if $SearchForm %>
				<span class="search-dropdown-icon">L</span>
				<div class="search-bar">
					$SearchForm
				</div>
			<% end_if %>
			<% include Navigation %>
		</div>
	</div>
</header> -->


<header class="header" role="banner">
	<div class="container">
		<nav class="navbar navbar-default">
			 <!-- Brand and toggle get grouped for better mobile display -->
		    <div class="navbar-header">
		      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <!-- <a class="navbar-brand" href="#">Brand</a> -->
			    <a href="$BaseHref" class="navbar-brand" rel="home">
		        	<div class="header-left">
			    	<img src="/logo-header.png">
					  <!-- <% if $SiteConfig.Tagline %>
					  <p>$SiteConfig.Tagline</p>
					  <% end_if %>
					  <h1>$SiteConfig.Title</h1>-->
			  		</div>
				</a>
		    </div>
		    <% include Navigation %>
		</nav>
	</div>
</header>
