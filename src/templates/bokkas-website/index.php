<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="<?php echo $this->language; ?>" lang="<?php echo $this->language; ?>" >
<head>
<jdoc:include type="head" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/bokkas-website/css/reset-min.css" type="text/css" />
<link rel="stylesheet" href="<?php echo $this->baseurl ?>/templates/bokkas-website/css/rebecca-cheri.css" type="text/css" />
</head>
<body>
	<div id="business-logo">
		Rebecca Cheri
	</div>
	<div id="toolbar">
		<jdoc:include type="modules" name="toolbar" style="xhtml" headerLevel="3" />
	</div>
	<div id="main">
		<jdoc:include type="component" />
	</div>
</body>
</html>