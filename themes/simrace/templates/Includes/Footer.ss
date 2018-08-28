<footer class="footer" role="contentinfo">
	<div class="container">
		<div class="unit size4of4 lastUnit">
			<div class="contect-footer">
				<div class="row">
					<div class="col-md-6">
						<div class="logo">
							<a href="$BaseHref" class="brand" rel="home">$SiteConfig.Title</a>
							<a href="$BaseHref" class="brand" rel="home">$SiteConfig.Tagline</a>
						</div>
					</div>
					<div class="col-md-2">
						<div  class="quick-link">
							<h3>QUICK LINKS</h3>
							<ul>
								<% loop $Menu(1) %>
									<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
								<% end_loop %>
							</ul>
						</div>
					</div>
					<div class="col-md-2">
						<div class="contact">
							<h3>CONTACT US</h3>
							<label>$SiteConfig.CopyRight</label><br/>
							<label>$SiteConfig.Address</label><br/>
							<label>$SiteConfig.PhoneNumber1</label><br/>
							<label>$SiteConfig.About</label><br/>
							<label>$SiteConfig.Email</label><br/>
						</div>
					</div>
					<div class="col-md-2">
						<div class="follow">
							<h3>FOLLOW US</h3>
							<a href="$SiteConfig.Facebook" target="_blank">
								<img src="/facebook.png" width="25" height="25"><label>Facebook</label>
							</a><br/>
							<a href="$SiteConfig.LinkedIn" target="_blank">
								<img src="/linkedin.png" width="25" height="25"><label>LinkedIn</label>
							</a><br/>
							<a href="$SiteConfig.Twitter" target="_blank">
								<img src="/twitter.png" width="25" height="25"><label>Twitter</label>
							</a><br/>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
