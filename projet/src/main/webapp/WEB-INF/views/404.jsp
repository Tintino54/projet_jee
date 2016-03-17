<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="myapp.homepage">
    <tiles:putAttribute name="title">Erreur 404</tiles:putAttribute>
    <tiles:putAttribute name="body">
		<div id="body" class="container-fluid grey-bg">
			<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-3 col-md-4 col-md-push-4 col-lg-4 col-lg-push-4 white-bg center">
				<h1>Erreur 404 - Page non trouvée</h1>
				<p>La page que vous demandez n'existe pas.</p>
				<p>Veuillez vérifier que vous avez bien tapé l'URL.</p>
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>