<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<tiles:insertDefinition name="myapp.homepage">
   	<tiles:putAttribute name="pagecss"><link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/home/about.css"></tiles:putAttribute>
    <tiles:putAttribute name="title">Inscription</tiles:putAttribute>
    <tiles:putAttribute name="body">
		<div id="body" class="container-fluid friendship-bg">
			<div class="col-xs-12 col-xs-push-0 col-sm-10 col-sm-push-1 col-md-10 col-md-push-1 col-lg-10 col-lg-push-1 white-bg fadeInBlock">
				<h1 class="titre">Equipe du site</h1>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 staff">
					<div class="col-lg-4">
						<img class="team" src="<c:url value="/resources/images/team/valentin.jpg"/>"/>
					</div>
					<div class="col-lg-8">
						<h3>Valentin GINISTY</h3>
						<p>Conception des modèles</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 staff">
					<div class="col-lg-4">
						<img class="team" src="<c:url value="/resources/images/team/kenny.jpg"/>"/>
					</div>
					<div class="col-lg-8">
						<h3>Kenny GUIOUGOU</h3>
						<p>Front-end (Bootstrap/CSS/JQuery)</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 staff">
					<div class="col-lg-4">
						<img class="team" src="<c:url value="/resources/images/team/florentin.jpg"/>"/>
					</div>
					<div class="col-lg-8">
						<h3>Florentin NOËL</h3>
						<p>Configuration Maven/Hibernate/Spring</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 staff">
					<div class="col-lg-4">
						<img class="team" src="<c:url value="/resources/images/team/ugo.jpg"/>"/>
					</div>
					<div class="col-lg-8">
						<h3>Ugo RAYER</h3>
						<p>Chef de projet et CEO de My Eggplant Company</p>
					</div>
				</div>
				<div class="col-xs-12 col-sm-6 col-md-4 col-lg-4 staff">
					<div class="col-lg-4">
						<img class="team" src="<c:url value="/resources/images/team/morgane.jpg"/>"/>
					</div>
					<div class="col-lg-8">
						<h3>Morgane TROYSI</h3>
						<p>Conception des controllers</p>
					</div>
				</div>
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>