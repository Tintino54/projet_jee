<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<tiles:insertDefinition name="myapp.homepage">
	<tiles:putAttribute name="pagecss"><link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/campaign/create.css"></tiles:putAttribute>
    <tiles:putAttribute name="title">Créer mon projet</tiles:putAttribute>
    <tiles:putAttribute name="body">
		<div id="body" class="container-fluid project-bg">
			<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-3 col-md-6 col-md-push-3 col-lg-6 col-lg-push-3 white-bg">
				
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>