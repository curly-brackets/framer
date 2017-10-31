searchBtn.states = 
	start:
		x: 240
		y: 20
		width: 70
		height: 40
		
	end:
		x: 10
		width: 240
		
search.states =
	start:
		x:260
	end:
		x: 200

searchBtn.states.switchInstant "start"
search.states.switchInstant "start"
		
closeBtn = new TextLayer
	text: "close"
	fontSize: 12
	x: 270
	y: 30
	
closeBtn.states =
	start:
		opacity: 0
	end:
		opacity: 1
		
closeBtn.stateSwitch("start")

abA.onTap ->
	searchBtn.stateCycle("start", "end")
	search.stateCycle("start","end")
	closeBtn.stateCycle("start", "end")
		
		