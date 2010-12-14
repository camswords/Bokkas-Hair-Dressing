<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
<jdoc:include type="head" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/bokkas-website/css/reset-min.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/bokkas-website/css/rebecca-cheri.css" type="text/css" />

<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-20232832-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

</head>
<body>
	<div id="wrapper">
		<div class="shadow1">
			<div class="shadow2">
				<div class="shadow3">
					<div class="container">
					<div id="header">
			<div id="business-logo">
				<img src="/templates/bokkas-website/images/rebeccacheri.jpg" width="378" height="100" alt="Rebecca Cheri" />
				<div id="tagline">mobile hairdressing</div>
			</div>
		
			<div id="toolbar">
				<jdoc:include type="modules" name="toolbar" style="xhtml" headerLevel="3" />
			</div>
		</div>
			<div id="content">		
						<jdoc:include type="component" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<br/>
	<br/>
	<br/>
	<br/>
</body>
</html>