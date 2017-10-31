photo.states.zoom = 
	frame: full.frame
	borderRadius: 0

photo.animationOptions =
	curve: Spring(0.85)
	time: 0.6

# Define states for content
text.parent = screenA
text.states = 
	show:
		y: 390
		opacity: 1
		options:
			delay: 0.2
			time: 0.4
	hide:
		y: 370
		opacity: 0
		options:
			time: 0.2

# Initial state	of text
text.stateSwitch("hide")

# Cycle states on click
screenA.onClick ->	
	photo.stateCycle()
	text.stateCycle("hide", "show")