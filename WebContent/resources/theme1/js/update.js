var update=function(){
	var a = document.getElementById("name").value.length;
	var b = document.getElementById("lastn").value.length;
	var c = document.getElementById("username").value.length;
	var e = document.getElementById("email").value.length;
	var d = document.getElementById("password").value.length;
	if(a == 0 && b == 0 && c == 0 && d == 0  && e===0){
		alert("Please, complete all the fields");
		return false;
	}else{
		if(isValidate(document.getElementById("name"),"Please use uppercase and lowercase letters for the field name")){
			if(isValidate(document.getElementById("lastn"),"Please use uppercase and lowercase letters for the field Last name")){
				if(validateUser(document.getElementById("username"),"Please use letters and numbers for the field username")){
						if(validateEmail(document.getElementById("email"),"Please use a valid email")){
							if(validatePassword(document.getElementById("password"),6,8)){
								alert("All fields Updates");
								return true;
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
			
	}	
	
};

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