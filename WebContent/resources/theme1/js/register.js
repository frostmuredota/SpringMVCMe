
$(function() {
  
    // Setup form validation on the #register-form element
    $("#register").validate({
    
        // Specify the validation rules
        rules: {
            name: "required",
            lastn: "required",
            username:"required",
            password: {
                required: true,
                minlength: 6
            }
           
        },
        
        // Specify the validation error messages
        messages: {
            name: "Please enter your first name",
            lastn: "Please enter your last name",
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

