$(function() {
  
    // Setup form validation on the #register-form element
    $("#formregistro").validate({
    
        // Specify the validation rules
        rules: {
            name: "required",
            lastn: "required",
            username:"required",
            password: {
                required: true,
                minlength: 5
            }
           
        },
        
        // Specify the validation error messages
        messages: {
            name: "Please enter your first name",
            lastn: "Please enter your last name",
            username: "Please enter your username",
            password: {
                required: "Please provide a password",
                minlength: "Your password must be at least 5 characters long"
            }
        },
        
        submitHandler: function(form) {
            form.submit();
        }
    });

  });

$(function() {
	  
    // Setup form validation on the #register-form element
    $("#form1").validate({
    
        // Specify the validation rules
        rules: {
            username: "required",
            password: {
                required: true,
                minlength: 5
            }
           
        },
        
        // Specify the validation error messages
        messages: {
            username: "Please enter your username",
            password: {
                required: "Please provide a password",
                minlength: "Your password must be at least 5 characters long"
            }
        },
        
        submitHandler: function(form) {
            form.submit();
        }
    });

  });
  	