<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<tiles:insertDefinition name="myapp.homepage">
	<tiles:putAttribute name="pagecss"><link rel="stylesheet" media="screen" href="${pageContext.request.contextPath}/resources/css/campaign/list.css"></tiles:putAttribute>
    <tiles:putAttribute name="title">Voir les projets</tiles:putAttribute>
    <tiles:putAttribute name="body">
		<div id="body" class="container-fluid project-bg">
			<div class="col-xs-10 col-xs-push-1 col-sm-10 col-sm-push-1 col-md-10 col-md-push-1 col-lg-10 col-lg-push-1">
			<c:set var="count" value="0" scope="page" />
			<c:forEach var="listValue" items="${lists}">
				<div class="col-lg-4">
				
					<div class="col-lg-12 project-square fadeInBlockList">
						<h3 class="titre">${listValue.title}</h3>	
						<div class="col-lg-12">
							<img class="fullwidth" src="<c:url value="/resources/images/uploads/${listValue.imagePath}"/>"/>
						</div>											
						<p>${listValue.resume}</p>
						<div><span class="currency">${totaux.get(count)}</span> / <span class="currency">${listValue.expectedamount.intValue()}</span> €</div>
						<a href="<c:url value="/show/${listValue.id}"/>" class="btn btn-full btn-aqua">Voir</a>
					</div>
				</div>
				<c:set var="count" value="${count + 1}" scope="page"/>
			</c:forEach>
			</div>
	        <script type="text/javascript">
	            $(document).ready(function() {
	            	var delai = 250;
	                var t = delai;
	                $('.fadeInBlockList').each( function(i){
	                    var $this = $(this);
	
	                    setTimeout(function() {
	                       $this.animate({'opacity':'1'},550);
	                    }, t);
	
	                    t += delai;
	                });
	            });
	        </script>
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>