<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="fr">
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="resources/js/jquery-2.2.1.min.js"></script>

		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css" />
		
		<!-- Optional theme -->
		<link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css" />
		
		<!--  Font Awesome -->
		<link rel="stylesheet" href="resources/bootstrap/css/font-awesome.min.css" />
		
		<!-- Latest compiled and minified JavaScript -->
		<script src="resources/bootstrap/js/bootstrap.min.js"></script>
	    
	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
	    <!--  Feuille de style perso -->
	    <link rel="stylesheet" href="resources/style/style.css" />
	    
		<title><tiles:getAsString name="title"/></title>
	</head>
	<body>
        <tiles:insertAttribute name="header" />
        <div id="body" class="container-fluid">
            <tiles:insertAttribute name="nav" />
            <tiles:insertAttribute name="body" />
        </div>
        <tiles:insertAttribute name="footer" />
	</body>
</html>