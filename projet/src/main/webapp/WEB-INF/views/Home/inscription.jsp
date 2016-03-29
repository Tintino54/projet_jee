<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<tiles:insertDefinition name="myapp.homepage">
	<tiles:putAttribute name="pagecss"><link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/home/inscription.css"></tiles:putAttribute>
    <tiles:putAttribute name="title">Inscription</tiles:putAttribute>
    <tiles:putAttribute name="body">
		<script src="resources/js/datepicker.js"></script>
		<div id="body" class="container-fluid suscribe-bg">
			<div class="row">
				<div class="row">
					<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-3 col-md-4 col-md-push-4 col-lg-4 col-lg-push-4">
						<c:if test="${not empty sucessMessage}" >
							<div class="alert alert-success">
								<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
								${sucessMessage}
							</div>
						</c:if>
					</div>
				</div>
			</div>
			<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-3 col-md-4 col-md-push-4 col-lg-4 col-lg-push-4 white-bg fadeInBlock">
		        <form:form action="/projet/inscription" commandName="user-entity" method="POST">
	 		        <h1 class="titre">Inscription</h1>
	 		        <div class="form-group">
						<form:label path="login" for="nom">Login:</form:label>
						<form:input path="login" type="text" class="form-control" id="login"/>
					</div>
					<div class="form-group">
						<form:label path="nom" for="nom">Nom:</form:label>
						<form:input path="nom" type="text" class="form-control" id="nom"/>
					</div>
					<div class="form-group">
						<form:label path="prenom"  for="prenom">Prénom:</form:label>
						<form:input path="prenom" type="text" class="form-control" id="prenom"/>
					</div>
					<div class="form-group">
						<form:label path="mail" for="email">Email:</form:label>
						<form:input path="mail" type="email" class="form-control" id="email"/>
					</div>
					<div class="form-group">
						<form:label path="mdp" for="pwd">Mot de passe:</form:label>
						<form:input path="mdp" type="password" class="form-control" id="pwd" data-toggle="tooltip" data-placement="top" title="Entre 6 et 12 caractères"/>
					</div>
       			 	<!-- Champ date de naissance (datePicker) -->
			        <div class="form-group">
			        	<form:label path="dateNaiss" for="datetimepicker">Date de naissance:</form:label>
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
			            <form:input path="dateNaiss"  type="date" class="form-control" id="DOB"/>
			        </div>
					<input type="submit" class="btn btn-aqua" value="Inscription">
		        </form:form>
		        <!-- Script pour les infobulles -->
		        <script>
		        $(function () {
		            // On initialise un datepicker Bootstrap
		            $('#datetimepicker').datetimepicker({
		                viewMode: 'years',  // On choisit d'abord l'année
		                locale: 'fr',
		                format: 'L',
		                maxDate: moment() // La date minimale est la date du jour plus 7 jours
		            });

		            // On récupère la date du vrai champ et on met à jour le datePicker si elle n'est pas nulle
		            // Ceci est utile en cas de soumission ratée du formulaire pour conserver la date rentrée
		            var date = $('#date_fin').val();
		            if(date != "")
		            {
		                var splitted = date.split("-");
		                var dateFormatted = splitted[2] + "/" + splitted[1] + "/" + splitted[0];
		                $('#datetimepicker').children('input').val(dateFormatted);
		            }
		            /* Nécessaire à cause de l'option maxDate */
		            else
		            {
		                $('#datetimepicker').children('input').val('');
		            }

		            // A chaque fois que l'on change la date du DatePicker, on met à jour la date du vrai champ caché
		            $("#datetimepicker").on("dp.change", function(e) {
		                var date = $('#datetimepicker').children('input').val();
		                var splitted = date.split("/");
		                var dateFormatted = splitted[2] + "-" + splitted[1] + "-" + splitted[0];
		                $('#date_fin').val(dateFormatted);
		            });



		        });
				$(document).ready(function(){
				    $('[data-toggle="tooltip"]').tooltip();   
				});
				</script>
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>