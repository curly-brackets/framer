#	variables -------------------------------
blue = "#005D99"
green = "#3DBE8B"
white = "#FFFFFF"

button.animate
	borderWidth: 10
	borderColor: "rgba(4,51,255,1)"
	width: 150
	height: 75
	borderRadius: 0
	options:
		time: 1
		curve: Bezier.ease

button.onAnimationEnd (event, layer) ->

	button.animate
		borderWidth: 1
		borderColor: "rgba(255,47,146,1)"
		options:
			time: 1
			curve: Bezier.ease
	
card.states.a =
	width: 248
	height: 287
	x: 63
	y: 190
	borderWidth: 2
	borderColor: "rgba(115,250,121,1)"

card.states.b =
	x: 150
	y: 75
	width: 98
	height: 98
	borderRadius: 49
	borderWidth: 1
	borderColor: "rgba(255,255,255,1)"
	
button.onTap ->
	card.stateCycle()
	
card.animationOptions =
	curve: Spring
	time: 0.8

