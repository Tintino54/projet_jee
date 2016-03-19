<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tiles:insertDefinition name="myapp.homepage">
    <tiles:putAttribute name="title">Créer mon projet</tiles:putAttribute>
    <tiles:putAttribute name="body">
		<div id="body" class="container-fluid project-bg">
			<div class="col-xs-10 col-xs-push-1 col-sm-10 col-sm-push-1 col-md-10 col-md-push-1 col-lg-8 col-lg-push-2">
				<div class="col-lg-3 project-square">
						<h3><c:out value="${projet.title}"/></h3>
						<img />
						<p><c:out value="${projet.description}"/></p>
						<div><c:out value="${projet.expectedamount}"/></div>
						<div><c:out value="${projet.expectedamount}"/></div>
						<a href="#" class="btn btn-default">Voir</a>
				</div>
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>