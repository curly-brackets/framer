
row01.states =
	state01:
		y: 118
		animationOptions:
			curve: "spring"

row02.states =
	state01:
		y: 168
		animationOptions:
			curve: "spring"

row03.states =
	state01:
		y: 68
		animationOptions:
			curve: "spring"
		
btn03.onTap ->
	row01.states.switch "state01"
	row02.states.switch "state01"
	row03.states.switch "state01"
	
	