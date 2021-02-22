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


<fieldset class="fieldset"><legend class="legend"><span>Write Us</span></legend><br><div class="field note no-label">Jot us a note and we’ll get back to you as quickly as possible.</div><div class="field name required"><label class="label" for="name"><span>Name</span></label> <div class="control"><input name="name" id="name" title="Name" value="" class="input-text" type="text" data-validate="{required:true}" aria-required="true"></div></div><div class="field email required"><label class="label" for="email"><span>Email</span></label> <div class="control"><input name="email" id="email" title="Email" value="" class="input-text" type="email" data-validate="{required:true, 'validate-email':true}" aria-required="true"></div></div><div class="field telephone"><label class="label" for="telephone"><span>Phone Number</span></label> <div class="control"><input name="telephone" id="telephone" title="Phone Number" value="" class="input-text" type="text"></div></div><div class="field comment required"><label class="label" for="comment"><span>What’s on your mind?</span></label> <div class="control"><textarea name="comment" id="comment" title="What’s on your mind?" class="input-text" cols="5" rows="3" data-validate="{required:true}" aria-required="true"></textarea></div></div> <div class="field-recaptcha" id="msp-recaptcha-d84b65fc916e7398083ea5f17089d8f1-container" data-bind="scope:'msp-recaptcha-d84b65fc916e7398083ea5f17089d8f1'"><!-- ko template: getTemplate() -->
<!-- ko if: (getIsVisible()) -->
<div data-bind="{
    attr: {
        'id': getReCaptchaId() + '-wrapper'
    },
    'afterRender': renderReCaptcha()
}" id="msp-recaptcha-d84b65fc916e7398083ea5f17089d8f1-wrapper">
    <div class="g-recaptcha" id="msp-recaptcha-d84b65fc916e7398083ea5f17089d8f1"><div style="width: 304px; height: 78px;"><div><iframe src="https://www.google.com/recaptcha/api2/anchor?ar=1&amp;k=6LfL4LoUAAAAAJS8bKFz_9MTFicBpkURLMAe-Zk5&amp;co=aHR0cHM6Ly93d3cucGFwZXJ3ZWlnaHQuaWU6NDQz&amp;hl=en&amp;v=2Mfykwl2mlvyQZQ3PEgoH710&amp;theme=light&amp;size=normal&amp;cb=mmse2s5dxuil" width="304" height="78" role="presentation" name="a-kha078u9s82z" frameborder="0" scrolling="no" sandbox="allow-forms allow-popups allow-same-origin allow-scripts allow-top-navigation allow-modals allow-popups-to-escape-sandbox"></iframe></div><textarea id="g-recaptcha-response" name="g-recaptcha-response" class="g-recaptcha-response" style="width: 250px; height: 40px; border: 1px solid rgb(193, 193, 193); margin: 10px 25px; padding: 0px; resize: none; display: none;"></textarea></div></div>
    <!-- ko if: (!getIsInvisibleRecaptcha()) -->
    <div class="field">
        <div class="control">
            <input type="checkbox" value="" class="required-captcha checkbox" name="recaptcha-validate-" data-validate="{required:true}">
        </div>
    </div>
    <!-- /ko -->
</div>
<!-- /ko -->
<!-- /ko --></div>    <input type="hidden" name="am-gdpr-checkboxes-from" value="contactus"></fieldset>



                
                

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



