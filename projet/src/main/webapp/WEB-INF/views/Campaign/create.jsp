<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="myapp.homepage">
	<tiles:putAttribute name="pagecss"><link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/campaign/create.css"></tiles:putAttribute>
    <tiles:putAttribute name="title">Créer mon projet</tiles:putAttribute>
    <tiles:putAttribute name="body">
		<div id="body" class="container-fluid project-bg">
			<div class="col-xs-10 col-xs-push-1 col-sm-6 col-sm-push-3 col-md-6 col-md-push-3 col-lg-6 col-lg-push-3 white-bg">
				<form action="/projet/check" method="POST" role="form">
					<h1>Créer mon projet</h1>
					<div class="form-group">
						<label for="name">Nom du projet:</label>
						<input type="text" class="form-control" id="name" path="name" />
					</div>
					<div class="form-group">
						<label for="amount">Montant attendu:</label>
						<input type="number" class="form-control" id="amount" path="amount" />
					</div>
       			 	<!-- Champ date de fin (datePicker) -->
			        <div class="form-group">
			        	<label for="datetimepicker">Date de fin:</label>
			            <div class='input-group date' id='datetimepicker'>
			                <input type='text' class="form-control" id="user_datetimepicker" />
			                <span class="input-group-addon">
			                <span class="glyphicon glyphicon-calendar">
			                </span>
			                </span>
			            </div>
			        </div>
			        <!-- Champ date de fin (auto-généré) -->
			        <div class="form-group hidden">
			            <input type="date_fin" class="form-control" id="date_fin">
			        </div>
     				<div class="form-group">
						<label for="desc">Description du projet:</label>
						<textarea class="form-control" rows="10" id="desc"></textarea>
					</div>
					<input type="submit" class="btn btn-default submit" value="Créer"/>
				</form>
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>