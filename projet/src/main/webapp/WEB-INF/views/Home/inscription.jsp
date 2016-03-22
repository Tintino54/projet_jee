<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<tiles:insertDefinition name="myapp.homepage">
	<tiles:putAttribute name="pagecss"><link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/home/inscription.css"></tiles:putAttribute>
    <tiles:putAttribute name="title">Inscription</tiles:putAttribute>
    <tiles:putAttribute name="body">
		<script src="resources/js/datepicker.js"></script>
		<div id="body" class="container-fluid suscribe-bg">
			<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-3 col-md-4 col-md-push-4 col-lg-4 col-lg-push-4 white-bg">
		        <form onsubmit="/inscription" method="POST" role="form">
	 		        <h1 class="titre">Inscription</h1>
					<div class="form-group">
						<label for="nom">Nom:</label>
						<input type="text" class="form-control" id="nom">
					</div>
					<div class="form-group">
						<label for="prenom">Prénom:</label>
						<input type="text" class="form-control" id="prenom">
					</div>
					<div class="form-group">
						<label for="email">Email:</label>
						<input type="email" class="form-control" id="email">
					</div>
					<div class="form-group">
						<label for="pwd">Mot de passe:</label>
						<input type="password" class="form-control" id="pwd" data-toggle="tooltip" data-placement="top" title="Entre 6 et 12 caractères">
					</div>
       			 	<!-- Champ date de naissance (datePicker) -->
			        <div class="form-group">
			        	<label for="datetimepicker">Date de naissance:</label>
			            <div class='input-group date' id='datetimepicker'>
			                <span class="input-group-addon">
			                <span class="glyphicon glyphicon-calendar">
			                </span>
			                </span>
			                <input type='text' class="form-control" id="user_datetimepicker"  data-toggle="tooltip" data-placement="top" title="Vous devez être majeur pour vous inscrire sur le site"/>
			            </div>
			        </div>
			        <!-- Champ date de naissance (auto-généré) -->
			        <div class="form-group hidden">
			            <input type="date" class="form-control" id="DOB">
			        </div>
					<input type="submit" class="btn btn-aqua" value="Inscription">
		        </form>
		        <!-- Script pour les infobulles -->
		        <script>
				$(document).ready(function(){
				    $('[data-toggle="tooltip"]').tooltip();   
				});
				</script>
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>