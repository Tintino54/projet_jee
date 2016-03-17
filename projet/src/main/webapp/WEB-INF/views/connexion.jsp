<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
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
<link rel="stylesheet"
	href="resources/bootstrap/css/bootstrap-theme.min.css" />

<!--  Font Awesome -->
<link rel="stylesheet"
	href="resources/bootstrap/css/font-awesome.min.css" />

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

<title>Accueil</title>
</head>
<body>
	<header>
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#collapse-1">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a href="/projet/"> <span><img
							src="resources/images/logo.png" /><span class="brandName"></span></span>
					</a>
				</div>
				<div class="collapse navbar-collapse" id="collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="/projet/">Accueil</a></li>
						<li><a href="#">Tout les projets</a></li>
						<li><a href="#">Lancer mon projet</a></li>
						<li><a href="#">Comment �a marche ?</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/projet/connexion"><span
								class="glyphicon glyphicon-user"></span> Connexion</a></li>
						<li><a href="/projet/inscription"><span
								class="glyphicon glyphicon-log-in"></span> Inscription</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<div id="body" class="container-fluid grey-bg">
		<div
			class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-3 col-md-4 col-md-push-4 col-lg-2 col-lg-push-5 white-bg">
			<form onsubmit="/check" method="POST" role="form">
				<h1>Connexion</h1>
				<div class="form-group">
					<label for="email">Adresse mail:</label> <input type="email"
						class="form-control" id="email">
				</div>
				<div class="form-group">
					<label for="pwd">Mot de passe:</label> <input type="password"
						class="form-control" id="pwd">
				</div>
				<button type="submit" class="btn btn-default submit">Connexion</button>
			</form>
		</div>
	</div>
	<footer>
		<nav class="navbar navbar-default navbar-fixed-bottom">
			<div class="container-fluid">
				<ul class="nav navbar-nav">
					<li><a href="/projet/about">A propos</a></li>
					<li><a href="/projet/contact">Contact</a></li>
				</ul>
				<div class="navbar-brand pull-right">Copyright � 2016 The
					Eggplant Company</div>
			</div>
		</nav>
	</footer>
</body>
</html>
