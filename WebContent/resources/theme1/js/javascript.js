
//Change the color to inputs type text
$(document).ready(function() {
    $('input:text').click(
    function(){
        $(this).css({'background-color' : '#FFEEAA'});
    });

    $('input:text').blur(
    function(){
        $(this).css({'background-color' : '#FFFFFF'});
    });
    
  //Change the color to inputs type password
    $('input:password').click(
    	    function(){
    	        $(this).css({'background-color' : '#FFEEAA'});
    });

    $('input:password').blur(
    function(){
    $(this).css({'background-color' : '#FFFFFF'});
    });
    
});

  	