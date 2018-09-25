<footer class="footer" role="contentinfo">
	<div class="container">
		<div class="unit size4of4 lastUnit">
			<div class="contect-footer">
				<div class="row">
					<div class="col-md-6 footer-left">
						<div class="logo">
							<img src="/logo.png">
							<!-- <a href="$BaseHref" class="brand" rel="home">$SiteConfig.Title</a>
							<a href="$BaseHref" class="brand" rel="home">$SiteConfig.Tagline</a> -->
							
						</div>
						<label class="left-content">$SiteConfig.About</label><br/>
						<div class="other"><a href="#">Terms & Conditions</a></div>
						<div class="other"><a href="#">Privacy Policy</a></div>
						<div class="other"><a href="#">Cancellation Policy</a></div>
						<label>$SiteConfig.CopyRight</label><br/>

					</div>
					<div class="footer-right">
						<div class="col-md-2 content">
							<div  class="quick-link">
								<h3>QUICK LINKS</h3>
								<ul>
									<% loop $Menu(1) %>
										<li class="$LinkingMode"><a href="$Link" title="$Title.XML">$MenuTitle.XML</a></li>
									<% end_loop %>
								</ul>
							</div>
						</div>
						<div class="col-md-2 content">
							<div class="address">
								<h3>CONTACT US</h3>
								<label class="footer-add">$SiteConfig.Address</label><br/>
								<label>PDC Phone - $SiteConfig.PhoneNumber1</label><br/>
								<label>Karting Phone - $SiteConfig.PhoneNumber2</label><br/>
								<label>Email - $SiteConfig.Email</label><br/>
							</div>
						</div>
						<div class="col-md-2 content">
							<div class="follow">
								<h3>FOLLOW US</h3>
								<div class="social">
									<a href="$SiteConfig.Facebook" target="_blank">
										<img src="/facebook.png" width="25" height="25"><label>Facebook</label>
									</a>
								</div>
								<div class="social">
									<a href="$SiteConfig.LinkedIn" target="_blank">
										<img src="/linkedin.png" width="25" height="25"><label>LinkedIn</label>
									</a>
								</div>
								<div class="social">
									<a href="$SiteConfig.Twitter" target="_blank">
										<img src="/twitter.png" width="25" height="25"><label>Twitter</label>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</footer>
