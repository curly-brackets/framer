#artwork
background = new BackgroundLayer
	backgroundColor: "black"

scrollableContent = new ScrollComponent 
	x:0, y:0, width: Screen.width, height: Screen.height,
	mouseWheelEnabled: true
	
home = new Layer 
	x:0, y:210, 
	width:750, height:1603, 
	image:"images/apps.png", 
	superLayer: scrollableContent.content
	
top = new Layer
	x:0, y:0,
	width:750, height:211,
	image:"images/top.png"

tabs = new Layer
	x:0, y:1240,
	width:750, height:96,
	image:"images/tabs.png"

#more screens
moreEuros = new Layer
	x:0, y:140, width:750, height:1293, opacity:0, backgroundColor: "green"
moreEuros.html="0,99E"
moreEuros.style=
	"font-size":"4.8em"
	"line-height":"4em"

moreCloud = new Layer
	x:0, y:140, width:750, height:1293, opacity:0, backgroundColor: "blue"
moreCloud.html="cloud"
moreCloud.style=
	"font-size":"4.8em"
	"line-height":"4em"
	
btn_moreEuros = new Layer
	x:600, y:245, width:120, height:70, backgroundColor:"green"
btn_moreEuros.html="0,99 E"
btn_moreEuros.style=
	"font-size":"1.1em"
	"padding-top":".5em"
	"text-align":"center"

btn_cancel_moreEuros = new Layer
	x:0, y:0, width:200, height:200, visible: false, backgroundColor: "transparent"
btn_cancel_moreEuros.html="Cancel"
btn_cancel_moreEuros.style=
	"font-size":"2em"
	"color":"red"
	"line-height":"2em"

btn_moreCloud = new Layer
	x:600, y:1085, width:120, height:70, backgroundColor:"blue"
btn_moreCloud.html="cloud"
btn_moreCloud.style=
	"font-size":"1.1em"
	"padding-top":".5em"
	"text-align":"center"

btn_cancel_moreCloud = new Layer
	x:0, y:0, width:200, height:200, visible: false, backgroundColor: "transparent"
btn_cancel_moreCloud.html="Cancel"
btn_cancel_moreCloud.style=
	"padding-top":"1em"
	"color":"red"
	"font-size":"2em"

#states
moreEuros.states.add
	appearance: { opacity:1, y:40 }

moreCloud.states.add
	appearance: { opacity:1, y:40 }

#events - More
btn_moreEuros.on Events.Click, ->
	moreEuros.states.next()
	btn_moreEuros.visible = false
	btn_cancel_moreEuros.visible = true
	btn_moreCloud.visible = false
	
btn_cancel_moreEuros.on Events.Click, ->
	moreEuros.states.next()
	btn_moreEuros.visible = true
	btn_cancel_moreEuros.visible = false
	btn_moreCloud.visible = true

btn_moreCloud.on Events.Click, ->
	moreCloud.states.next()
	btn_moreCloud.visible = false
	btn_cancel_moreCloud.visible = true
	btn_moreEuros.visible = false

btn_cancel_moreCloud.on Events.Click, ->
	moreCloud.states.next()
	btn_moreCloud.visible = true
	btn_cancel_moreCloud.visible = false
	btn_moreEuros.visible = true