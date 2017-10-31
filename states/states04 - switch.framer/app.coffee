layer = new Layer

layer.x = -150

layer.states =
	one:
		backgroundColor: "green"
		animationOptions:
			curve: Spring(.5)
		x:0
	two:
		backgroundColor: "rgba(123, 123, 123, 0.498039)"
		animationOptions:
			curve: Spring(.5)

layer.onClick ->
	layer.states.switch "one"
		
	

	
	
