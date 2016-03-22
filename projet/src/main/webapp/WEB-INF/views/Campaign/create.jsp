<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<tiles:insertDefinition name="myapp.homepage">
	<tiles:putAttribute name="pagecss"><link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/campaign/create.css"></tiles:putAttribute>
    <tiles:putAttribute name="title">Créer mon projet</tiles:putAttribute>
    <tiles:putAttribute name="body">
		<div id="body" class="container-fluid project-bg">
			<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-3 col-md-6 col-md-push-3 col-lg-6 col-lg-push-3 white-bg">
				<form action="" th:action="@{/nouveau}" th:object="${campaign}" method="POST" role="form">
					<h1 class="titre">Créer mon projet</h1>
					<c:if test="${not empty sucessMessage}" >
						<h1 class="titre">Déja crée</h1>
					</c:if>
					<c:if test="${empty sucessMessage}" >
						<h1 class="titre">Success message vide</h1>
					</c:if>
					<div class="form-group">
						<label for="name">Nom du projet :</label>
						<input type="text" class="form-control" th:field="*{nom}" id="name" path="name" />
					</div>
					<div class="form-group">
						<label for="amount">Montant attendu :</label>
						<input type="number" class="form-control" th:field="*{expectedamount}" id="amount" path="amount" />
					</div>
       			 	<!-- Champ date de fin (datePicker) -->
			        <div class="form-group">
			        	<label for="datetimepicker">Date de fin :</label>
			            <div class='input-group date' id='datetimepicker'>

			                <span class="input-group-addon">
			                <span class="glyphicon glyphicon-calendar">
			                </span>
			                </span>			                
			                <input type='text' class="form-control" id="user_datetimepicker" />
			            </div>
			        </div>
			        <!-- Champ date de fin (auto-généré) -->
			        <div class="form-group hidden">
			            <input type="date_fin" class="form-control" th:field="*{deadline}" id="date_fin">
			        </div>
			        <script>
			        $(function () {
			            // On initialise un datepicker Bootstrap
			            $('#datetimepicker').datetimepicker({
			                viewMode: 'years',  // On choisit d'abord l'année
			                locale: 'fr',
			                format: 'L',
			                minDate: moment().add(7,'days') // La date minimale est la date du jour plus 7 jours
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
			                $('#DOB').val(dateFormatted);
			            });



			        });
			        </script>
     				<div class="form-group">
						<label for="desc">Description du projet :</label>
						<textarea class="form-control" th:field="*{description}" rows="10" id="desc"></textarea>
					</div>
					<input type="submit" class="btn btn-aqua" value="Créer"/>
				</form>
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>