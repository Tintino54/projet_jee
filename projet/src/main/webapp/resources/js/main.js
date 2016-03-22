$(document).ready(function() {
	var delai = 0;
    var t = delai;
    $('.fadeInBlock').each( function(i){
        var $this = $(this);

        setTimeout(function() {
           $this.animate({'opacity':'1'},900);
        }, t);

        t += delai;
    });
});