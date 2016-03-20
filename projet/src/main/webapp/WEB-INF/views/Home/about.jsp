<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<tiles:insertDefinition name="myapp.homepage">
   	<tiles:putAttribute name="pagecss"><link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/home/about.css"></tiles:putAttribute>
    <tiles:putAttribute name="title">Inscription</tiles:putAttribute>
    <tiles:putAttribute name="body">
		<script src="resources/js/datepicker.js"></script>
		<div id="body" class="container-fluid suscribe-bg">
			<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-3 col-md-4 col-md-push-4 col-lg-4 col-lg-push-4 white-bg">
				<h1>Equipe du site</h1>
				<div class="row">
					<div class="col-lg-3">
						<img class="team" src="<c:url value="/resources/images/team/valentin.jpg"/>"/>
					</div>
					<div class="col-lg-9">
						<h3>Valentin GINISTY</h3>
						<p>Conception des modèles</p>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3">
						<img class="team" src="<c:url value="/resources/images/team/kenny.jpg"/>"/>
					</div>
					<div class="col-lg-9">
						<h3>Kenny GUIOUGOU</h3>
						<p>Front-end</p>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3">
						<img class="team" src="<c:url value="/resources/images/team/florentin.jpg"/>"/>
					</div>
					<div class="col-lg-9">
						<h3>Florentin NOËL</h3>
						<p>Configuration de Maven et Hibernate</p>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3">
						<img class="team" src="<c:url value="/resources/images/team/ugo.jpg"/>"/>
					</div>
					<div class="col-lg-9">
						<h3>Ugo RAYER</h3>
						<p>Chef de projet et CEO de My Eggplant Company</p>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-3">
						<img class="team" src="<c:url value="/resources/images/team/morgane.jpg"/>"/>
					</div>
					<div class="col-lg-9">
						<h3>Morgane TROYSI</h3>
						<p>Conception des controllers</p>
					</div>
				</div>
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>