	
btnBg.states.animate =
	backgroundColor: "#00A2A7"
	opacity: .5
	options: 
		curve: Spring(damping: 0.5)
		delay: 0
		time: 1

btnBg.onTap ->
	btnBg.stateCycle()