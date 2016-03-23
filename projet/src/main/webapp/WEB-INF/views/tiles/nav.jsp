<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8"%>
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
				<a href="<c:url value="/" />"> <span class="spanbrand"><img
						src="<c:url value="/resources/images/logo.png"/>" /><span
						class="brandName"></span></span>
				</a>
			</div>
			<div class="collapse navbar-collapse" id="collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="<c:url value="/liste" />">Les projets</a></li>
					<li><a href="<c:url value="/nouveau" />">Lancer mon projet</a></li>
					<li><a href="<c:url value="/principe" />">Aide</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<c:choose>
						<c:when test="${empty user}">
							<ul class="nav navbar-nav navbar-right">	
								<li><a href="<c:url value="/connexion" />"><span
										class="glyphicon glyphicon-user"></span> Connexion</a></li>
								<li><a href="<c:url value="/inscription" />"><span
										class="glyphicon glyphicon-log-in"></span> Inscription</a></li>
							</ul>
						</c:when>
						<c:otherwise>
							<p class="navbar-text">Bonjour ${user.login}</p>
							<ul class="nav navbar-nav navbar-right">	
								<li><a href="<c:url value="/deconnexion" />"><span
										class="glyphicon glyphicon-log-out"></span> Deconnexion</a></li>
							</ul>
						</c:otherwise>
					</c:choose>
				
			</div>
		</div>
	</nav>
</header>