$(function() {
	  
    // Setup form validation on the #register-form element
    $("#session").validate({
    
        // Specify the validation rules
        rules: {
            username: "required",
            password: {
                required: true,
                minlength: 6
             
            }
           
        },
        
        // Specify the validation error messages
        messages: {
            username: "Please enter your username",
            password: {
                required: "Please provide a password",
                minlength: "Your password must be at least 6 characters long"
               
            }
        },
        
        submitHandler: function(form) {
            form.submit();
        }
    });

  });
  	