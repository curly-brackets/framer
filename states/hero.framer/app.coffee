layer = new Layer

layer.states =
	one:
		backgroundColor: "green"
		animationOptions:
			curve: Spring(.5)
	two:
		backgroundColor: "rgba(123, 123, 123, 0.498039)"
		animationOptions:
			curve: Spring(.5)

#delete layer.states.default

layer.onClick ->
	layer.stateCycle "one", "two"
		
	

	
	
