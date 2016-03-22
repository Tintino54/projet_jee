<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<tiles:insertDefinition name="myapp.homepage">
    <tiles:putAttribute name="title">Nous contacter</tiles:putAttribute>
    <tiles:putAttribute name="body">
		<script src="resources/js/datepicker.js"></script>
		<div id="body" class="container-fluid project-bg">
			<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-3 col-md-4 col-md-push-4 col-lg-4 col-lg-push-4 white-bg">
		        <form onsubmit="/inscription" method="POST" role="form">
	 		        <h1 class="titre">Nous contacter</h1>
					<div class="form-group">
						<label for="nom">Votre nom et prénom:</label>
						<input type="text" class="form-control" id="nom">
					</div>
					<div class="form-group">
						<label for="email">Votre email:</label>
						<input type="email" class="form-control" id="email">
					</div>
      				<div class="form-group">
						<label for="desc">Votre message:</label>
						<textarea class="form-control" rows="10" id="desc"></textarea>
					</div>
					<input type="submit" class="btn btn-aqua" value="Envoyer" />
		        </form>
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>