<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@page session="true"%>
<tiles:insertDefinition name="myapp.homepage">
	<tiles:putAttribute name="pagecss">
		<link rel="stylesheet" media="screen"
			href="${pageContext.request.contextPath}/resources/css/home/connexion.css">
	</tiles:putAttribute>
	<tiles:putAttribute name="title">Connexion</tiles:putAttribute>
	<tiles:putAttribute name="body">
		<div id="body" class="container-fluid login-bg">
			<div
				class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-3 col-md-4 col-md-push-4 col-lg-4 col-lg-push-4 white-bg fadeInBlock">
				<form:form action="/projet/check" commandName="user-entity" method="POST">
					<h1 class="titre">Connexion</h1>
					<div class="form-group">
						<form:label for="email" path="email">Adresse mail:</form:label> <form:input type="email"
							class="form-control" id="email" name="email" path="email"/>
					</div>
					<div class="form-group">
						<form:label for="pwd" path="pwd">Mot de passe:</form:label> <form:input type="password"
							class="form-control" id="pwd" name="pwd" path="pwd" />
					</div>
					<input type="submit" class="btn btn-aqua" value="Connexion" />
				</form:form>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>