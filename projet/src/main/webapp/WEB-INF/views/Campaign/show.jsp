<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
							<li><a data-toggle="pill" href="#news">News <span class="badge">5</span></a></li>
							<li><a data-toggle="pill" href="#entries">Contributions <span class="badge">150</span></a></li>
							<li><a data-toggle="pill" href="#comments">Commentaires <span class="badge">100</span></a></li>
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
						</div>
						<div id="news" class="tab-pane fade">
							<h3>News</h3>
							<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						</div>
						<div id="entries" class="tab-pane fade">
							<h3>Contributions</h3>
							<!-- the input fields that will hold the variables we will use -->  
							<input type='hidden' id='current_page_dons' />  
							<input type='hidden' id='show_per_page_dons' />  
							  
							<!-- Content_dons div. The child elements will be used for paginating(they don't have to be all the same,  
							    you can use divs, paragraphs, spans, or whatever you like mixed together). '-->  
							<div id='content_dons'>  
								<c:forEach var="dons" items="${dons}">
									<div class="don col-lg-2">
										<div class="col-lg-12">${dons.title}</div>
										<div class="col-lg-12"><img class="avatar" src="<c:url value="/resources/images/avatars/female.png"/>"/></div>
										<div class="col-lg-12">${dons.expectedamount} €</div>
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
						</div>
						<div id="comments" class="tab-pane fade">
							<div class="row">
								<h2 class="center">Commentaires</h2>
							</div>							
							<!-- the input fields that will hold the variables we will use -->  
							<input type='hidden' id='current_page' />  
							<input type='hidden' id='show_per_page' />  
							  
							<!-- Content div. The child elements will be used for paginating(they don't have to be all the same,  
							    you can use divs, paragraphs, spans, or whatever you like mixed together). '-->  
							<div id='content'>  
								<c:forEach var="listValue" items="${textes}">
									<div class="comment col-lg-12">
										<div class="col-xs-9 col-lg-1">
											<img class="avatar" src="<c:url value="/resources/images/avatars/female.png"/>"/>
										</div>
										<div class="col-xs-3 col-lg-2">
											11 janvier 1991
										</div>
										<div class="col-xs-12 col-lg-9">
											<h3>${listValue}</h3>
											<p>${listValue}</p>
											<div>${listValue}</div>
										</div>
										<div class="col-lg-12"><hr></div>
									</div>
								</c:forEach>
							</div>  
							  
							<!-- An empty div which will be populated using jQuery -->  
							<ul id='page_navigation' class="pagination"></ul>  					
							<script>
							$(document).ready(function(){  
								  
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
							  
							});  
							  
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
						</div>
					</div>
				</div>
				<div class="col-lg-3 project-aside white-bg">
					<div class="row">
						<div class="row" id="stats-projet">
							<div class="col-lg-6">
								<div class="project-highlight">36 926 <i class="fa fa-eur"></i></div>
								<div class="project-highlight-down">Collectés</div>
							</div>
							<div class="col-lg-6">
								<div class="project-highlight"><i class="fa fa-users"></i> 36 926</div>
								<div class="project-highlight-down">Contributeurs</div>
							</div>
							<div class="col-lg-6">
								<div class="project-highlight">16 000 <i class="fa fa-eur"></i></div>
								<div class="project-highlight-down">Objectif</div>
							</div>
							<div class="col-lg-6">
								<div class="project-highlight"><i class="fa fa-calendar-o"></i> 2</div>
								<div class="project-highlight-down">Jours</div>
							</div>
						</div>

						<div class="col-lg-12">
							<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 100%;">
									125%
								</div>
							</div>
						</div>
						<div class="col-lg-12">
							<button type="button" class="btn btn-full btn-aqua" data-toggle="modal" data-target="#sendPayment">Soutenir ce projet</button>	
							<div id="sendPayment" class="modal fade" role="dialog">
								<div class="modal-dialog">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Faire une donation</h4>
										</div>
										<div class="modal-body">
											<p>Mettre le formulaire ici</p>
										</div>
										<div class="modal-footer">
											<button type="button" class="btn btn-aqua" data-dismiss="modal">Fermer</button>
										</div>
									</div>
								</div>
							</div>
							<button type="button" class="btn btn-aqua" data-toggle="modal" data-target="#chart">Répartition des dons&nbsp;<i class="fa fa-bar-chart-o"></i></button>	
							<div id="chart" class="modal fade" role="dialog">
								<div class="modal-dialog modal-lg">
									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">Répartition des dons</h4>
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
											                ['5 €', 8],
											                ['Entre 5€ et 10€', 3],
											                ['Entre 10€ et 20€', 1],
											                ['Entre 20€ et 30€', 6],
											                ['Entre 30€ et 40€', 8],
											                ['Entre 40€ et 50€', 4],
											                ['Plus de 50€', 4]
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
						</div>
						<div class="col-lg-12">
							<ul>
								<li>Si la jauge n'atteint pas les 3 000 € avant le 31/03/2016, votre participation sera automatiquement recréditée</li>
								<li>Vous pouvez annuler votre participation tant que la jauge n'a pas atteint les 100%</li>
							</ul>
						</div>
					</div>

				</div>	
			</div>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>