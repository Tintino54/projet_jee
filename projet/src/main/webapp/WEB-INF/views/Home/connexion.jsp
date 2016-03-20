<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<tiles:insertDefinition name="myapp.homepage">
	<tiles:putAttribute name="pagecss"><link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/home/connexion.css"></tiles:putAttribute>
    <tiles:putAttribute name="title">Connexion</tiles:putAttribute>
    <tiles:putAttribute name="body">
		<div id="body" class="container-fluid login-bg">
			<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-3 col-md-4 col-md-push-4 col-lg-4 col-lg-push-4 white-bg">
				<form:form action="/projet/check" method="POST" role="form">
					<h1>Connexion</h1>
					<div class="form-group">
						<label for="email">Adresse mail:</label>
						<form:input type="email" class="form-control" id="email" path="email" />
					</div>
					<div class="form-group">
						<label for="pwd">Mot de passe:</label>
						<form:input type="password" class="form-control" id="pwd" path="pwd" />
					</div>
					<input type="submit" class="btn btn-default submit" value="Connexion"/>
				</form:form>
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>