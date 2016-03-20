<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %> 
<tiles:insertDefinition name="myapp.homepage">
    <tiles:putAttribute name="title">Accueil</tiles:putAttribute>
    <tiles:putAttribute name="body">
        <div id="body" class="container-fluid body-carousel">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#my#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="resources/images/walter.jpg" style="min-width: 100%;background-size: cover;background-repeat: no-repeat;background-position: 50% 50%;background-attachment:fixed;" alt="First slide">
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>Sauvez Walter White !</h1>
                                <p>Aidez Walter dans sa collecte pour pouvoir se payer une chimiothérapie</p>
                            </div>
                        </div>
                    </div>                  
                    <div class="item">
                        <img src="resources/images/naruto.jpg" style="min-width: 100%;background-size: cover;background-repeat: no-repeat;background-position: 50% 50%;background-attachment:fixed;" data-src="" alt="Second slide">
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>
                                    Reconstruction de Konoha
                                </h1>
                                <p>Aidez-nous à reconstruire notre précieux village détruit par l'akatsuki</p>
                            </div>
                        </div>
                    </div>
                    <!--
                    <div class="item">
                        <img src="1.jpg" style="width:100%" data-src="" alt="Third slide">
                        <div class="container">
                            <div class="carousel-caption">
                                <h1>
                                    Headling 3
                                </h1>
                                <p> Description 3</p>
                            </div>
                        </div>
                    </div>
                      -->
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>
    </tiles:putAttribute>
</tiles:insertDefinition>