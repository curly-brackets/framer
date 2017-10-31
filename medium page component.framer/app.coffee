page = new PageComponent
	#width: 320
	height: Screen.height
	x: Align.center
	scrollVertical: false
	clip: false # the content outside the box won't be clipped
	
card1.parent = page.content
card2.parent = page.content