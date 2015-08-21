
$(function() {
  
    // Setup form validation on the #register-form element
	$.validator.addMethod("expression", function (value, element) {
	    return this.optional(element) || /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/i.test(value);
	}, "Please enter a valid email.");
    $("#register").validate({
    
        // Specify the validation rules
        rules: {
            name: "required",
            lastn: "required",
            username:"required",
            email: {
            	required: true,
            	expression:true
            },
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
            email:{
            	required: "Please enter your email"
               
            },
            password: {
                required: "Please provide a password",
                minlength: "Your password must be of 6 characters min"
                
            }
        },
        
        submitHandler: function(form) {
            form.submit();
        }
    });

  });

