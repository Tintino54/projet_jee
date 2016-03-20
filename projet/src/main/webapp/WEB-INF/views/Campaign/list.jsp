<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tiles:insertDefinition name="myapp.homepage">
	<tiles:putAttribute name="pagecss"><link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/campaign/list.css"></tiles:putAttribute>
    <tiles:putAttribute name="title">Créer mon projet</tiles:putAttribute>
    <tiles:putAttribute name="body">
		<div id="body" class="container-fluid project-bg">
			<div class="col-xs-10 col-xs-push-1 col-sm-10 col-sm-push-1 col-md-10 col-md-push-1 col-lg-8 col-lg-push-2">
			<c:forEach var="listValue" items="${lists}">
				<div class="col-lg-3 project-square">
						<h3>${listValue.title}</h3>
						<img />
						<p>${listValue.description}</p>
						<div>${listValue.expectedamount}</div>
						<div>${listValue.expectedamount}</div>
						<a href="<c:url value="/projet/show/1"/>" class="btn btn-default">Voir</a>
				</div>
			</c:forEach>
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>