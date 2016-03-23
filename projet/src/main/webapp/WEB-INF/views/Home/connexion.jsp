<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@page session="true"%>
<style>
.error {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #a94442;
	background-color: #f2dede;
	border-color: #ebccd1;
}

.msg {
	padding: 15px;
	margin-bottom: 20px;
	border: 1px solid transparent;
	border-radius: 4px;
	color: #31708f;
	background-color: #d9edf7;
	border-color: #bce8f1;
}

#login-box {
	width: 300px;
	padding: 20px;
	margin: 100px auto;
	background: #fff;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border: 1px solid #000;
}
</style>
<tiles:insertDefinition name="myapp.homepage">
	<tiles:putAttribute name="pagecss">
		<link rel="stylesheet" media="screen"
			href="${pageContext.request.contextPath}/resources/css/home/connexion.css">
	</tiles:putAttribute>
	<tiles:putAttribute name="title">Connexion</tiles:putAttribute>
	<tiles:putAttribute name="body">
		<div id="body" class="container-fluid login-bg">
			<c:if test="${not empty error}">
				<div class="error">${error}</div>
			</c:if>
			<c:if test="${not empty msg}">
				<div class="msg">${msg}</div>
			</c:if>
			<div
				class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-3 col-md-4 col-md-push-4 col-lg-4 col-lg-push-4 white-bg fadeInBlock">
				<%-- 				<form:form action="/projet/check" method="POST"> --%>
				<!-- 					<h1 class="titre">Connexion</h1> -->
				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="email">Adresse mail:</label> <input type="email" -->
				<!-- 							class="form-control" id="email" name="email"/> -->
				<!-- 					</div> -->
				<!-- 					<div class="form-group"> -->
				<!-- 						<label for="pwd">Mot de passe:</label> <input type="password" -->
				<!-- 							class="form-control" id="pwd" name="pwd"/> -->
				<!-- 					</div> -->
				<!-- 					<input type="submit" class="btn btn-aqua" value="Connexion" /> -->
				<%-- 				</form:form> --%>
				<form name='loginForm'
					action="<c:url value='/j_spring_security_check' />" method='POST'>
					<table>
						<tr>
							<td>User:</td>
							<td><input type='text' name='login'></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><input type='password' name='password' /></td>
						</tr>
						<tr>
							<td colspan='2'><input name="submit" type="submit"
								value="submit" /></td>
						</tr>
					</table>

					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>
			</div>
		</div>
	</tiles:putAttribute>
</tiles:insertDefinition>