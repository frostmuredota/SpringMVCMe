function register(){
	var a = document.getElementById("name").value.length;
	var b = document.getElementById("lastn").value.length;
	var c = document.getElementById("username").value.length;
	var e = document.getElementById("email").value.length;
	var d = document.getElementById("password").value.length;
	var g = document.getElementById("image").value;
	if(a == 0 && b == 0 && c == 0 && d == 0 && e == 0 && g == ""){
		alert("Please, complete all the fields");
		return false;
	}else{
		if(isValidate(document.getElementById("name"),"Please use uppercase and lowercase letters for the field name")){
			if(isValidate(document.getElementById("lastn"),"Please use uppercase and lowercase letters for the field Last name")){
				if(validateUser(document.getElementById("username"),"Please use letters and numbers for the field username")){
					//if(validateSex(document.getElementById("sex"),"Please select a Sex")){
						if(validateEmail(document.getElementById("email"),"Please use a valid email")){
							if(validatePassword(document.getElementById("password"),6,8)){
								if(g == ""){
									alert("Please, choise a image");
									return false;
								}else{
									
									return true;
								}
								
							}else{
								return false;
							}
						}else{
							return false;
						}
					}else{
						return false;
					}
				}else{
					return false;
				}
			}else{
				return false;
			}
			
	//	}else{
		//	return false;
		//}
			
		
			
				     
	}	
}

var  isValidate= function(element,message){
	var expression = /^[a-zA-Z]+$/;
	if(element.value.match(expression)){
		return true;
	}else{
		alert(message);
		element.focus();
		return false;
	}
};

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

function validateSex(element,message){
		if(element.checked=true){
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
function validateEmail(element,message){
	var regex= /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
	if(element.value.match(regex)){
		return true;
	}else{
		alert(message);
		element.focus();
		return false;
	}
}
/*JQUERY CODE
 * $(function() {
  
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
 * */

