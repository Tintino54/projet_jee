<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
	<head>
	    <meta charset="utf-8">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="<c:url value="/resources/js/jquery-2.2.1.min.js"/>"></script>
		
		<!-- Inclusion de Bootstrap -->
		<link rel="stylesheet" href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" />
		<link rel="stylesheet" href="<c:url value="/resources/bootstrap/css/bootstrap-theme.min.css"/>" />
		<link rel="stylesheet" href="<c:url value="/resources/bootstrap/css/font-awesome.min.css"/>" />
		<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>"></script>
	    
	    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	    <!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
	      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	    <![endif]-->
	    
		<!-- Inclusion de Bootstrap DatePicker -->
		<link rel="stylesheet" media="screen" href="<c:url value="/resources/datepicker/css/bootstrap-datetimepicker.min.css"/>">
		<script src="<c:url value="/resources/js/moment-with-locales.min.js"/>"></script>
		<script src="<c:url value="/resources/datepicker/js/bootstrap-datetimepicker.min.js"/>"></script>
	    
	    <!-- Inclusion de Bootstrap Paginator -->
	    <script src="<c:url value="/resources/pagination/jquery.twbsPagination.min.js"/>"></script>
	    
	    <!--  Feuille de style principale -->
	    <link rel="stylesheet" href="<c:url value="/resources/css/main.css"/>" />
	    <!--  Feuille de style propre à la page -->
	    <tiles:getAsString name="pagecss" defaultValue="" />
	    
	    <link rel="icon" type="image/png" href="<c:url value="/resources/images/favicon.png"/>"  />
		<title><tiles:getAsString name="title"/></title>
	</head>
	<body>
		<tiles:insertAttribute name="nav" />
		<tiles:insertAttribute name="body" />
        <tiles:insertAttribute name="footer" />
	</body>
</html>