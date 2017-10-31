layer = new Layer

layer.states =
	one:
		backgroundColor: "red"
		html: "one"
		
	two:
		backgroundColor: "green"
		html: "two"
	
layer.onClick ->
	layer.stateCycle "one", "two"
		
	

	
	
