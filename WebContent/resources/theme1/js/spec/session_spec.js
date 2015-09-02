describe("Testing Log In Form", function(){
	describe("Valid input username",function(){
		it("When username is not Empty",function(){
			var a="Ramon";
			expect(validateUser(a,"Please use uppercase and lowercase letters for the field name")).toBeTruthy();
		})
		it("When username is Empty",function(){
			var b= "";
			expect(validateUser(b,"Please use uppercase and lowercase letters for the field name")).toBeFalsy();
		})
	});
	
	describe("Valid input password",function(){
		it("When password is empty",function(){
			var min = 6;
			var max = 8;
			var password = "";
			expect(validatePassword(password,min,max)).toBeFalsy();
		})
		it("When password not empty and length is not correct",function(){
			var min1 = 6;
			var max1 = 8;
			var pass=1234;
			expect(validatePassword(pass,min1,max1)).toBeFalsy();
			
		})
		
		it("When password not empty and length is correct",function(){
			var min2 = 6;
			var max2 = 8;
			var pass1=1234567;
			expect(validatePassword(pass1,min2,max2)).toEqual(false);
		})
		
	});
	
});
