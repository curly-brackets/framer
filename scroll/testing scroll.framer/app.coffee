ScrollComp = new ScrollComponent
	scrollHorizontal: false
	width: Screen.width
	height: Screen.height
	speedY: .5
	backgroundColor: "orange"
	y:50
	
ScrollComp.contentInset = 	top: -50

myContent.parent = ScrollComp.content


