ScrollComp = new ScrollComponent
	scrollHorizontal: false
	width: Screen.width
	height: Screen.height - 50
	speedY: .5
	
ScrollComp.contentInset =
	top: 50
	left: 0
	right: 0
	bottom: 150

#ScrollComp.content.draggable.overdrag = false
#ScrollComp.content.draggable.bounce = false
#ScrollComp.mouseWheelEnabled = true

layer1 = new Layer
	parent: ScrollComp.content
	width: Screen.width - 60
	x: 30
	backgroundColor: "#fff"
	borderRadius: 5
	height: 70
	y: 70
	
layer2 = new Layer
	parent: ScrollComp.content
	width: Screen.width - 60
	x: 30
	backgroundColor: "red"
	borderRadius: 5
	height: 70
	y: 170
	
layer3 = new Layer
	parent: ScrollComp.content
	width: Screen.width - 60
	x: 30
	backgroundColor: "gray"
	borderRadius: 5
	height: 510
	y: 270
	
tabBar = new Layer
	width: Screen.width
	backgroundColor: "orange"
	height: 50
	y: 520

navBar = new Layer
	width: Screen.width
	backgroundColor: "orange"
	height: 50
