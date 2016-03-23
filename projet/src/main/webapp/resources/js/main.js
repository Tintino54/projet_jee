$(document).ready(function() {
	
    /* On affiche les fade tout les block de la classe fadeinblock */
	var delai = 0;
    var t = delai;
    
    $('.fadeInBlock').each( function(i){
        var $this = $(this);

        setTimeout(function() {
           $this.animate({'opacity':'1'},900);
        }, t);

        t += delai;
    });
    
	/* On remplace chaque span de class currency en ajoutant les espaces entre les milliers */
    $('span.currency').each( function(i){
		$(this).text( $(this).text().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1 ") );
    });
});