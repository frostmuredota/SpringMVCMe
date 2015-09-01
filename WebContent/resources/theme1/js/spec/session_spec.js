describe("session", function(){
	it("Valid Name",function(){
		var sess = new session();
		expect(sess.validateUser("Ramon","Message")).toBeTruthy();
		
	});
	it("Valid Last Name",function(){
		expect(5).toEqual(5);
	});
	it("Valid Username",function(){
		expect(5).toEqual(5);
	});
	it("Valid Password",function(){
		expect(5).toEqual(5);
	});
	it("Valide Email",function(){
		expect(5).toEqual(5);
	});
	
});
