	
btnBg.states =
	one:
		backgroundColor: "#00A2A7"
		htm:"one"
	opacity: .5
	animationOptions: 
		curve: Spring(damping: 0.5)
		delay: 0
		time: 1

btnBg.onTap ->
	btnBg.stateCycle()