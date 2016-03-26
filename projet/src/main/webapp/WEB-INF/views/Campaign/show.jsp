<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<tiles:insertDefinition name="myapp.homepage">
    <tiles:putAttribute name="title">Créer mon projet</tiles:putAttribute>
    <tiles:putAttribute name="pagecss"><link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/campaign/show.css"></tiles:putAttribute>
    <tiles:putAttribute name="body">
		<div id="body" class="container-fluid project-bg">
			<div class="row">
				<div class="col-lg-9 white-bg">
					<div class="row">
						<ul class="nav nav-pills nav-justified">
							<li class="active"><a data-toggle="pill" href="#home">Le projet</a></li>
							<li><a data-toggle="pill" href="#news">News <span class="label label-pill">5</span></a></li>
							<li><a data-toggle="pill" href="#entries">Contributions <span class="label label-pill" id="nbDons">${dons.size()}</span></a></li>
							<li><a data-toggle="pill" href="#comments">Commentaires <span class="label label-pill" id="nbComments">${textes.size()}</span></a></li>
						</ul>
					</div>
					<div class="tab-content col-lg-12">
						<div id="home" class="tab-pane fade in active">
							<h2 class="titre">${campagne.title}</h2>
							<p>${campagne.description}</p>
						</div>
						<div id="news" class="tab-pane fade">
							<h2 class="titre">News</h2>
							<div class="col-lg-12" id="content_news">
									<c:forEach var="news" items="${news}">
										<div class="col-lg-2">
										${news.published}
										</div>
										<div class="col-lg-10">
											<div class="col-lg-12">${news.title}</div>
											<div class="col-lg-12">${news.message}</div>
										</div>
									</c:forEach>
							</div>
							<c:if test="${!empty user}">
								<button class="btn btn-aqua btn-full" id="toggleNews">Poster une news</button>
								<div class="col-lg-12" id="formNews">
									<hr>
									<h2 class="titre">Poster une news</h2>
									<form method="POST" role="form">
										<div class="form-group">
											<label for="titrenews">Titre:</label>
											<input type="text" class="form-control" id="titrenews">
										</div>
											<div class="form-group">
											<label for="desc">Contenu :</label>
											<textarea class="form-control" rows="10" id="desc"></textarea>
										</div>
										<input type="submit" class="btn btn-aqua" value="Envoyer" />
										<div class="btn btn-aqua" id="closeNewsForm">Annuler</div>
								    </form>	
								</div>
								<script>
								    $( document ).ready(function() {
										$( "#formNews" ).hide();
								        $( "#toggleNews" ).click(function() {
								        	$( "#formNews" ).slideDown( "fast" );
								        	$( "#toggleNews" ).hide();
								        	});
								        $( "#closeNewsForm" ).click(function() {
								        	$( "#toggleNews" ).slideDown( "fast" );
								        	$( "#formNews" ).hide();
								        	});
								    });
								</script>
							</c:if>	
						</div>
						<div id="entries" class="tab-pane fade">
							<h2 class="titre">Contributions</h2>
							<c:if test="${dons.size() == 0}">
								<p>Ce projet n'a encore reçu aucun don.</p>
								<p>N'hésitez-pas à être le premier !</p>
							</c:if>
							<c:if test="${dons.size() > 0}">
								<!-- the input fields that will hold the variables we will use -->  
								<input type='hidden' id='current_page_dons' />  
								<input type='hidden' id='show_per_page_dons' />  
								  
								<!-- Content_dons div. The child elements will be used for paginating(they don't have to be all the same,  
								    you can use divs, paragraphs, spans, or whatever you like mixed together). '-->
								<div id='content_dons' class="row">
									<c:forEach var="dons" items="${dons}">
										<div class="col-lg-2">
											<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 don fadeInBlockList">
												<div class="col-lg-12 center username">${dons.utilisateur.login}</div>
												<div class="col-lg-12">
													<c:if test="${dons.utilisateur.sexe == 1}">
														<img class="avatar"	src="<c:url value="/resources/images/avatars/male.png"/>" />
													</c:if>
													<c:if test="${dons.utilisateur.sexe == 0}">
														<img class="avatar"	src="<c:url value="/resources/images/avatars/female.png"/>" />
													</c:if>
												</div>
												<div class="col-lg-12 center amount"><span class="label label-default currency">${dons.donation.intValue()}€</span></div>
											</div>
										</div>
									</c:forEach>
								</div>
	
								<!-- An empty div which will be populated using jQuery -->  
								<ul id='page_navigation_dons' class="pagination"></ul>  					
								<script>
								$(document).ready(function(){  
									  
								    //how much items per page to show  
								    var show_per_page_dons = 18;  
								    //getting the amount of elements inside content_dons div  
								    var number_of_items_dons = $('#content_dons').children().size();  
								    //calculate the number of pages we are going to have  
								    var number_of_pages_dons = Math.ceil(number_of_items_dons/show_per_page_dons);  
								  
								    //set the value of our hidden input fields  
								    $('#current_page_dons').val(0);  
								    $('#show_per_page_dons').val(show_per_page_dons);  
								  
								    //now when we got all we need for the navigation let's make it '  
								  
								    /* 
								    what are we going to have in the navigation? 
								        - link to previous page 
								        - links to specific pages 
								        - link to next page 
								    */  
								    var navigation_html = '<li><a class="previous_link" href="javascript:previousPage_dons();">Prec.</a></li>';  
								    var current_link = 0;  
								    while(number_of_pages_dons > current_link){  
								        navigation_html += '<li><a class="page_link" href="javascript:go_to_page_dons(' + current_link +')" longdesc="' + current_link +'">'+ (current_link + 1) +'</a></li>';  
								        current_link++;  
								    }  
								    navigation_html += '<li><a class="next_link" href="javascript:nextPage_dons(' + number_of_pages_dons + ');">Suiv.</a></li>';  
								  
								    $('#page_navigation_dons').html(navigation_html);  
								  
								    //add active_page class to the first page link  
								    $('#page_navigation_dons .page_link:first').addClass('active_page');  
								  
								    //hide all the elements inside content_dons div  
								    $('#content_dons').children().css('display', 'none');  
								  
								    //and show the first n (show_per_page_dons) elements  
								    $('#content_dons').children().slice(0, show_per_page_dons).css('display', 'block');  
								  
								});  
								  
								function previousPage_dons(){  
								  
								    new_page = parseInt($('#current_page_dons').val()) - 1;  
								    //if there is an item before the current active link run the function  
								    console.log(new_page > 0);
								    if(new_page >= 0){
								        go_to_page_dons(new_page);  
								    }  
								  
								}  
								  
								function nextPage_dons(number_of_pages_dons){  
								    new_page = parseInt($('#current_page_dons').val()) + 1;  
								    //if there is an item after the current active link run the function
								    console.log(new_page < number_of_pages_dons);
								    if(new_page < number_of_pages_dons){
								        go_to_page_dons(new_page);  
								    }  
								  
								}  
								function go_to_page_dons(page_num){  
								    //get the number of items shown per page  
								    var show_per_page_dons = parseInt($('#show_per_page_dons').val());  
								  
								    //get the element number where to start the slice from  
								    start_from = page_num * show_per_page_dons;  
								  
								    //get the element number where to end the slice  
								    end_on = start_from + show_per_page_dons;  
								  
								    //hide all children elements of content_dons div, get specific items and show them  
								    $('#content_dons').children().css('display', 'none').slice(start_from, end_on).css('display', 'block');  
								  
								    /*get the page link that has longdesc attribute of the current page and add active_page class to it 
								    and remove that class from previously active page link*/  
								    $('.page_link[longdesc=' + page_num +']').addClass('active_page').siblings('.active_page').removeClass('active_page');  
								  
								    //update the current page input field  
								    $('#current_page_dons').val(page_num);  
								}  
								</script>
							</c:if>
						</div>
						<div id="comments" class="tab-pane fade">
							<div class="row">
								<h2  class="titre">Commentaires</h2>
							</div>	
							<c:if test="${textes.size() == 0}">
								<p>Ce projet n'a encore reçu aucun commentaire.</p>
								<p>Soyez le premier à poster un message !</p>
							</c:if>
							<c:if test="${textes.size() > 0}">	
								<!-- the input fields that will hold the variables we will use -->  
								<input type='hidden' id='current_page' />  
								<input type='hidden' id='show_per_page' />  
								  
								<!-- Content div. The child elements will be used for paginating(they don't have to be all the same,  
								    you can use divs, paragraphs, spans, or whatever you like mixed together). '-->  
								<div id='content' class="row">  
									<c:forEach var="listValue" items="${textes}">
										<div class="comment col-lg-12">
											<div class="col-xs-9 col-lg-1">
												<c:if test="${listValue.utilisateur.sexe == 1}">
														<img class="avatar"	src="<c:url value="/resources/images/avatars/male.png"/>" />
													</c:if>
													<c:if test="${listValue.utilisateur.sexe == 0}">
														<img class="avatar"	src="<c:url value="/resources/images/avatars/female.png"/>" />
													</c:if>
											</div>
											<div class="col-xs-3 col-lg-2">
												${DATE_FORMAT.format(listValue.published)}
											</div>
											<div class="col-xs-12 col-lg-9">
												<h3>${listValue.title}</h3>
												<p>par ${listValue.utilisateur.login}</p>
												<div>${listValue.message}</div>
											</div>
											<div class="col-lg-12"><hr></div>
										</div>
									</c:forEach>
								</div>  
								  
								<!-- An empty div which will be populated using jQuery -->  
								<div class="row">
									<ul id='page_navigation' class="pagination"></ul>  
								</div>		
								<script>
								$(document).ready(function(){  
									  
									initComments();
								  
								});  
								
								function initComments(){  
									  
								    //how much items per page to show  
								    var show_per_page = 4;  
								    //getting the amount of elements inside content div  
								    var number_of_items = $('#content').children().size();  
								    //calculate the number of pages we are going to have  
								    var number_of_pages = Math.ceil(number_of_items/show_per_page);  
								  
								    //set the value of our hidden input fields  
								    $('#current_page').val(0);  
								    $('#show_per_page').val(show_per_page);  
								  
								    //now when we got all we need for the navigation let's make it '  
								  
								    /* 
								    what are we going to have in the navigation? 
								        - link to previous page 
								        - links to specific pages 
								        - link to next page 
								    */  
								    var navigation_html = '<li><a class="previous_link" href="javascript:previousPage();">Prec.</a></li>';  
								    var current_link = 0;  
								    while(number_of_pages > current_link){  
								        navigation_html += '<li><a class="page_link" href="javascript:go_to_page(' + current_link +')" longdesc="' + current_link +'">'+ (current_link + 1) +'</a></li>';  
								        current_link++;  
								    }  
								    navigation_html += '<li><a class="next_link" href="javascript:nextPage(' + number_of_pages + ');">Suiv.</a></li>';  
								  
								    $('#page_navigation').html(navigation_html);  
								  
								    //add active_page class to the first page link  
								    $('#page_navigation .page_link:first').addClass('active_page');  
								  
								    //hide all the elements inside content div  
								    $('#content').children().css('display', 'none');  
								  
								    //and show the first n (show_per_page) elements  
								    $('#content').children().slice(0, show_per_page).css('display', 'block');  
								  
								}  
								
								function previousPage(){  
								  
								    new_page = parseInt($('#current_page').val()) - 1;  
								    //if there is an item before the current active link run the function  
								    console.log(new_page > 0);
								    if(new_page >= 0){
								        go_to_page(new_page);  
								    }  
								  
								}  
								  
								function nextPage(number_of_pages){  
								    new_page = parseInt($('#current_page').val()) + 1;  
								    //if there is an item after the current active link run the function
								    console.log(new_page < number_of_pages);
								    if(new_page < number_of_pages){
								        go_to_page(new_page);  
								    }  
								  
								}
								function go_to_page(page_num){  
								    //get the number of items shown per page  
								    var show_per_page = parseInt($('#show_per_page').val());  
								  
								    //get the element number where to start the slice from  
								    start_from = page_num * show_per_page;  
								  
								    //get the element number where to end the slice  
								    end_on = start_from + show_per_page;  
								  
								    //hide all children elements of content div, get specific items and show them  
								    $('#content').children().css('display', 'none').slice(start_from, end_on).css('display', 'block');  
								  
								    /*get the page link that has longdesc attribute of the current page and add active_page class to it 
								    and remove that class from previously active page link*/  
								    $('.page_link[longdesc=' + page_num +']').addClass('active_page').siblings('.active_page').removeClass('active_page');  
								  
								    //update the current page input field  
								    $('#current_page').val(page_num);  
								}  
								</script>
							</c:if>
							<!-- Ajax pour commentaires -->
							<!-- <script type="text/javascript">
								$(document).ready(function() {
								    // Lorsque je soumets le formulaire
								 
								    
								    $('#formComment').on('submit', function(e) {
								        e.preventDefault(); // J'empêche le comportement par défaut du navigateur, c-à-d de soumettre le formulaire
								 
								        var $this = $(this); // L'objet jQuery du formulaire
								 
								        // Je récupère les valeurs
								        var pseudo = $('#pseudo').val();
								        var mail = $('#mail').val();
								 
								        // Je vérifie une première fois pour ne pas lancer la requête HTTP
								        // si je sais que mon PHP renverra une erreur
								        if(pseudo === '' || mail === '') {
								            alert('Les champs doivent êtres remplis');
								        } else {
								            // Envoi de la requête HTTP en mode asynchrone
								            $.ajax({
								                //url: $this.attr('action'), // Le nom du fichier indiqué dans le formulaire
								                url: '<c:url value="/ajaxtest"/>',
								                encoding: 'UTF-8',
								                dataType: 'json',
								                type: $this.attr('method'), // La méthode indiquée dans le formulaire (get ou post)
								                data: $this.serialize(), // Je sérialise les données (j'envoie toutes les valeurs présentes dans le formulaire)
								                success : function(data) {
								                    var obj = data;
								                    
								                    var root = "/projet";
								                    var content = '';
								                    var count = 0;
								                       $.each(data, function(i, item) {
								                               content += "<div class=\"comment col-lg-12\">";
								                               content += "<div class=\"col-xs-9 col-lg-1\">";
								                               if(item.sexe == 1)
								                                content += "<img class=\"avatar\"src=\"" + root + "/resources/images/avatars/male.png\" />";
								                                else
								                                    content += "<img class=\"avatar\" src=\"" + root + "/resources/images/avatars/female.png\" />";
								                               content += "</div>";
								                               content += "<div class=\"col-xs-3 col-lg-2\">";
								                               content += moment(item.date).format('DD/MM/YYYY');
								                               content += "</div>";
								                               content += "<div class=\"col-xs-12 col-lg-9\">";
								                               content += "<h3>" + item.titre + "</h3>";
								                               content += "<p>par " + item.nom + "</p>";
								                               content += "<div>" + item.texte + "</div>";
								                               content += "</div>";
								                               content += "<div class=\"col-lg-12\"><hr></div>";
								                               content += "</div>";
								                               count++;
								                           })
								                           alert(content);
								                         $('#content').html(content);
								                         initComments();
								                         $('#nbComments').html(count);
								
								                }
								            });
								        }
								    });
								    
								    
								
								    
								});
								</script> -->
							<c:if test="${!empty user}">
								<button class="btn btn-aqua btn-full" id="toggleComment">Ecrire un commentaire</button>
								<div class="col-lg-12" id="formComment">
									<hr>
									<h2 class="titre">Poster un commentaire</h2>
						        	<form:form action="/projet/postComment" method="POST" commandName="commentaire" role="form">
										<div class="form-group">
											<form:label for="titrecom" path="title">Titre :</form:label>
											<form:input type="text" class="form-control" id="titrecom" path="title" required="required" />
										</div>
					  					<div class="form-group">
											<form:label for="desc" path="message">Commentaire :</form:label>
											<form:textarea class="form-control" rows="10" id="desc" path="message" required="required" ></form:textarea>
										</div>
										<input type="submit" class="btn btn-aqua" value="Envoyer" />
										<div class="btn btn-aqua" id="closeCommentForm">Annuler</div>
							        </form:form>
								</div>
						        <script>
							        $( document ).ready(function() {
						        		$( "#formComment" ).hide();
								        $( "#toggleComment" ).click(function() {
								        	$( "#formComment" ).slideDown( "fast" );
								        	$( "#toggleComment" ).hide();
								        	});
								        $( "#closeCommentForm" ).click(function() {
								        	$( "#toggleComment" ).slideDown( "fast" );
								        	$( "#formComment" ).hide();
								        	});
							        });
						        </script>
							</c:if>	
						</div>
					</div>
				</div>
				<div class="col-lg-3 project-aside white-bg">
					<div class="row">
						<div class="row" id="stats-projet">
							<div class="col-lg-6">
								<div class="project-highlight"><span class="currency">${montantCollecte.intValue()}</span> <i class="fa fa-eur"></i></div>
								<div class="project-highlight-down">Collectés</div>
							</div>
							<div class="col-lg-6">
								<div class="project-highlight"><i class="fa fa-users"></i> ${dons.size()}</div>
								<div class="project-highlight-down">Contributeurs</div>
							</div>
							<div class="col-lg-6">
								<div class="project-highlight"><span class="currency">${campagne.expectedamount.intValue()}</span> <i class="fa fa-eur"></i></div>
								<div class="project-highlight-down">Objectif</div>
							</div>
							<div class="col-lg-6">
							<c:if test="${!termine}">
   								<div class="project-highlight"><i class="fa fa-calendar-o"></i> ${temps}</div>
								<div class="project-highlight-down">Jours</div>
							</c:if>
							<c:if test="${termine}">
								<div class="project-highlight"><i class="fa fa-calendar-o"></i> Terminé</div>
							</c:if>
							</div>
						</div>

						<div class="col-lg-12">
							<div class="progress">
								<div class="${classBar}" role="progressbar" aria-valuenow="${percent}" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: ${barWidth}%;">
									${percent}%
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<c:if test="${!termine}">
								<button type="button" class="btn btn-full btn-aqua" data-toggle="modal" data-target="#sendPayment">Soutenir ce projet</button>	
								<div id="sendPayment" class="modal fade" role="dialog">
									<div class="modal-dialog">
										<!-- Modal content-->
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">&times;</button>
												<h2 class="titre">Faire une donation</h2>
											</div>
											<div class="modal-body">
												<c:choose>
													<c:when test="${!empty user}">
														<!-- Formulaire de dons -->
												        <form:form  method="POST" action="/projet/postParticip" commandName="participation">
															<div class="form-group">
																<form:label for="montant" path="donation">Montant du don:</form:label>
																<form:input type="number" path="donation" pattern="^\d+(\.|\,)\d{2}$" min="5" step="0.01" class="form-control" id="montant"/>
															</div>
															<input type="submit" class="btn btn-aqua" value="Envoyer" />
												        </form:form>
													</c:when>
													<c:otherwise>
														<div class="row">
															<div class="col-xs-12 col-lg-12">
																<p>Pour faire une donation, vous devez d'abord vous connecter avec votre compte !</p>
																<p>Si vous n'avez pas de compte, vous pouvez en créer un.</p>
															</div>
															<div class="col-xs-6 col-lg-6">
																<a class="btn btn-aqua btn-full" href="<c:url value="/inscription" />">Créer mon compte</a>	
															</div>
															<div class="col-xs-6 col-lg-6">
																<a class="btn btn-aqua btn-full" href="<c:url value="/connexion" />">Me connecter</a>
															</div>	
														</div>
													</c:otherwise>
												</c:choose>
											</div>
										</div>
									</div>
								</div>
							</c:if>											
						</div>
						<div class="col-lg-12">
							<ul>
								<c:if test="${!termine && (percent < 100)}">
									<li>Si la jauge n'atteint pas les <span class="currency">${campagne.expectedamount.intValue()}</span> € avant le <c:out value="${dateString}"/>, votre participation sera automatiquement recréditée</li>
									<li>Vous pouvez annuler votre participation tant que la jauge n'a pas atteint les 100%</li>
								</c:if>
								<c:if test="${termine}">
									<c:if test="${percent < 100}">
										<li>Le projet n'ayant pas atteint 100%, votre donation vous sera resistuée si vous en avez fait une.</li>
									</c:if>
								</c:if>
								<c:if test="${percent >= 100}">
									<li>Le projet a atteint son objectif. Vous ne pouvez plus annuler votre participation.</li>
								</c:if>
							</ul>
							<c:if test="${dons.size() > 0}">
								<button type="button" class="btn btn-aqua btn-full" data-toggle="modal" data-target="#chart"><i class="fa fa-bar-chart-o"></i>&nbsp;Statistiques sur les dons</button>	
									<div id="chart" class="modal fade" role="dialog">
										<div class="modal-dialog modal-lg">
											<!-- Modal content-->
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal">&times;</button>
													<h2 class="titre">Répartition des dons</h2>
												</div>
												<div class="modal-body">
													<script src="https://code.highcharts.com/highcharts.js"></script>
													<script src="https://code.highcharts.com/highcharts-3d.js"></script>
													<script src="https://code.highcharts.com/modules/exporting.js"></script>
													<div id="container_chart"></div>
													<script>
													$(function () {
													    $('#container_chart').highcharts({
													        chart: {
													            type: 'pie',
													            options3d: {
													                enabled: true,
													                alpha: 45
													            }
													        },
													        credits: {
													            enabled: false
													        },
													        title: {
													            text: 'Répartition des montants des donations'
													        },
													        subtitle: {
													            text: 'Répartition des montants des donations'
													        },
													        plotOptions: {
													            pie: {
													                innerSize: 100,
													                depth: 45
													            }
													        },
													        series: [{
													            name: 'Nombre de dons',
													            data: [
													                ['5 € et Moins', <c:out value="${nombreDons5}"/>],
													                ['Entre 5€ et 20€', <c:out value="${nombreDons5to20}"/>],
													                ['Entre 20€ et 50€', <c:out value="${nombreDons20to50}"/>],
													                ['Entre 50€ et 100€', <c:out value="${nombreDons50to100}"/>],
													                ['100€ et plus', <c:out value="${nombreDons100}"/>]
													            ]
													        }]
													    });											    
													});
													</script>										
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-aqua" data-dismiss="modal">Fermer</button>
												</div>
											</div>
										</div>
									</div>
							</c:if>			
						</div>
					</div>

				</div>	
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>