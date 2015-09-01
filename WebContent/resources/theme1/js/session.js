function session(){
	var a = document.getElementById("username").value.length;
	var b = document.getElementById("password").value.length;
	
	if(a == 0 && b ==0){
		alert("Please, complete all the fields");
		return false;
	}else{
		if(validateUser(document.getElementById("username"),"Please complete the field username")){
			if(validatePassword(document.getElementById("password"),6,8)){
				return true;
			}else{
				return false;
			}
		}else{
			return false;
		}
	}
}
function validateUser(element,message){
	var expression = /^[a-zA-Z0-9]+$/;
	if(element.value.match(expression)){
		return true;
	}else{
		alert(message);
		element.focus();
		return false;
	}
}
function validatePassword(element, min, max){
	var val = element.value;
	if(val.length >= min && val.length <= max){
		return true;
	}else{
		alert("Please enter between " +min+ " and " +max+ " characters");
		element.focus();
		return false;
	}
}




/* JQUERY VALIDATE
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
  	*/