btnBg.onTap (event, layer) ->
	
	btnBg.animate
		backgroundColor: "#00A2A7"
		html:"one"
		opacity: .5
		animationOptions: 
			curve: Spring(damping: 0.5)
			delay: 0
			time: 1