<?php include 'includes/session.php'; ?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-red layout-top-nav">
<div class="wrapper">

	<?php include 'includes/navbar.php'; ?>
	 
	  <div class="content-wrapper">
	    <div class="container">

	      <!-- Main content -->
	      <section class="content">
	        <div class="row">
	        	<div class="col-sm-9">
	        		<?php
	        			if(isset($_SESSION['error'])){
	        				echo "
	        					<div class='alert alert-danger'>
	        						".$_SESSION['error']."
	        					</div>
	        				";
	        				unset($_SESSION['error']);
	        			}
	        		?>

		            <h2>Evolutionary Stationary</h2>
		                
		               
		                
		                
		                <div id="hours">

<h2>Opening Hours</h2>
<p>Online open 24/7<br>Retail Open<br>Monday to Friday: 9:00am to 5:30pm<br>Saturday: 09:30am to 5:00pm</p>
<p><strong>Closed for lunch 1:00pm to 2:00pm Saturdays</strong><strong><br></strong></p>
<hr>
<p><strong>&nbsp;</strong></p>
<h2>Contact Details</h2>
<p>Phone: 01 8453393 <br>Fax: 01 8451224 <br><br><br>2 Main Street <br>Malahide <br>Co Dublin <br>Ireland</p>
<p><strong>Eircode:&nbsp; <span class="E-code-text clearfix print-float-none ng-binding">K36 X757</span></strong></p>
<a href="http://www.loc8code.com/NMB-36-37G"><img src="http://www.loc8code.com/res/images/buttons/loc8.png" alt="Loc8 Code Icon" width="60" height="60"><br>NMB-36-37G</a></div>
<div>&nbsp;</div>
                                       
<div><hr></div>
                                       
<h2>Online Site</h2>
<p>Our online site features over 8,000 of the most popular office and computer products available today, all ready to deliver nationwide, from the central warehouse, with over 90% of orders fulfilled within 24 hours.<br>We have only listed the most popular products, which we have chosen carefully to save you time. If the product or brand you require is not on the site, please contact us and we should be able to add it to the site for you.</p>

<h2>Retail Shop</h2>
<p>Our retail shop, based on the Main Street in Malahide village has traded sucessfully since 1986 serving greater Dublin, including Malahide, Portmarnock, Swords and the Fingal area. <br>We pride ourselves on our ability to source a complete and extensive range of Office and Computer Supplies on behalf of our business and retail customers.</p>
                                       
                                       <div class="widget block block-static-block"><div id="callus">Call Us Now on  <a href="tel:+35318453393">01 8453393</a></div></div>
                                        
                    
		                
		                
		                
		                
		                
		                
		                
		                
		                
		                
		                
		                
		                
		                
		                
		                
		                

	        	</div>
	        	<div class="col-sm-3">
	        		<?php include 'includes/sidebar.php'; ?>
	        	</div>
	        </div>
	      </section>
	     
	    </div>
	  </div>
  
</div>

<?php include 'includes/scripts.php'; ?>
</body>
</html>