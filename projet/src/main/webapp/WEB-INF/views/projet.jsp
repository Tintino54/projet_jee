<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tiles:insertDefinition name="myapp.homepage">
    <tiles:putAttribute name="title">Créer mon projet</tiles:putAttribute>
    <tiles:putAttribute name="body">
		<div id="body" class="container-fluid project-bg">
			<div class="row white-bg">
				<div class="col-lg-8">
					<div class="row">
						<ul class="nav nav-pills nav-justified">
							<li class="active"><a data-toggle="pill" href="#home">Le projet</a></li>
							<li><a data-toggle="pill" href="#news">News(5)</a></li>
							<li><a data-toggle="pill" href="#entries">Contributeurs(150)</a></li>
							<li><a data-toggle="pill" href="#comments">Commentaires(100)</a></li>
						</ul>
					</div>
					<div class="tab-content col-lg-12">
						<div id="home" class="tab-pane fade in active">
							<h3>HOME</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
										<h3><c:out value="${projet.title}"/></h3>
					<img />
					<p><c:out value="${projet.description}"/></p>
					<div><c:out value="${projet.expectedamount}"/></div>
					<div><c:out value="${projet.expectedamount}"/></div>
					<a href="#" class="btn btn-default">Voir</a>
						</div>
						<div id="news" class="tab-pane fade">
							<h3>Menu 1</h3>
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						</div>
						<div id="entries" class="tab-pane fade">
							<h3>Menu 2</h3>
							<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
						</div>
						<div id="comments" class="tab-pane fade">
							<h3>Menu 3</h3>
							<c:forEach var="listValue" items="${textes}">
								<div class="col-lg-12">
										<h3>${listValue}</h3>
										<img />
										<p>${listValue}</p>
										<div>${listValue}</div>
										<hr>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="col-lg-4 grey-bg">
					<div class="col-lg-6">36 926 € Collectés</div>
					<div class="col-lg-6">1452 KissBankers</div>
					<div class="col-lg-6">16 000 € Objectif</div>
					<div class="col-lg-6">2 Jours</div>
					<div class="col-lg-12"><a class="btn btn-default">Soutenir ce projet</a></div>
				</div>				
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>