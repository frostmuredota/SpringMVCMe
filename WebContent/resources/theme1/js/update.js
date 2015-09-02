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
						if(validateEmail(document.getElementById("email").value,"Please use a valid email")){
							if(validatePassword(document.getElementById("password").value.length,6,8)){
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
	
	if(element.length!=0){
		return true;
	}else{
		alert(message);
		return false;
	}
};

function validateUser(element,message){
;
	if(element.length!=0){
		return true;
	}else{
		alert(message);
		return false;
	}
}
function validatePassword(element, min, max){
	if(element >= min && element <= max){
		return true;
	}else{
		alert("Please enter between " +min+ " and " +max+ " characters");
		return false;
	}
}
function validateEmail(element,message){
	if(element!=""){
		var regex= /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
		if(element.match(regex)){
			return true;
		}else{
			alert(message);
			return false;
		}
	}else{
		return false;
	}
	
}