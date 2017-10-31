#more screens
moreCars = new Layer
	x:0, y:540, width:750, height:1200, opacity:0, backgroundColor: "green"
moreCars.html="More Cars"
moreCars.style=
	"font-size":"4.8em"
	"margin-top":"4em"
	"line-height":"4em"

moreBoats = new Layer
	x:0, y:540, width:750, height:600, opacity:0, backgroundColor: "blue"
moreBoats.html="More Boats"
moreBoats.style=
	"font-size":"4.8em"
	"padding-top":"1.8em"

label_Cars = new Layer
	x:0, y:200, width:200, height:200, backgroundColor:"transparent"
label_Cars.html="Cars"
label_Cars.style=
	"color":"white"
	"font-size":"2.8em"
	"line-height":"2.8em"
	
label_Boats = new Layer
	x:300, y:200, width:200, height:200, backgroundColor:"transparent"
label_Boats.html="Boats"
label_Boats.style=
	"color":"white"
	"font-size":"2.8em"
	"line-height":"2.8em"
	
btn_moreCars = new Layer
	x:0, y:40, width:200, height:200, backgroundColor: "green"
btn_moreCars.html="..."
btn_moreCars.style=
	"font-size":"5.2em"
	"padding-top":".5em"
	"text-align":"center"

btn_cancel_moreCars = new Layer
	x:0, y:0, width:200, height:200, visible: false, backgroundColor: "transparent"
btn_cancel_moreCars.html="Cancel"
btn_cancel_moreCars.style=
	"font-size":"2em"
	"color":"red"
	"line-height":"2em"

btn_moreBoats = new Layer
	x:300, y:40, width:200, height:200, backgroundColor: "blue"
btn_moreBoats.html="..."
btn_moreBoats.style=
	"font-size":"5.2em"
	"padding-top":".5em"
	"text-align":"center"

btn_cancel_moreBoats = new Layer
	x:0, y:0, width:200, height:200, visible: false, backgroundColor: "transparent"
btn_cancel_moreBoats.html="Cancel"
btn_cancel_moreBoats.style=
	"padding-top":"1em"
	"color":"red"
	"font-size":"2em"

#states
moreCars.states.add
	appearance: { opacity:1, y:40 }

moreBoats.states.add
	appearance: { opacity:1, y:40 }

#events , More

btn_moreCars.on Events.Click, ->
	moreCars.states.next()
	btn_moreCars.visible = false
	btn_cancel_moreCars.visible = true
	btn_moreBoats.visible = false
	label_Cars.visible = false
	label_Boats.visible = false
	
btn_cancel_moreCars.on Events.Click, ->
	moreCars.states.next()
	btn_moreCars.visible = true
	btn_cancel_moreCars.visible = false
	btn_moreBoats.visible = true
	label_Cars.visible = true
	label_Boats.visible = true

btn_moreBoats.on Events.Click, ->
	moreBoats.states.next()
	btn_moreBoats.visible = false
	btn_cancel_moreBoats.visible = true
	btn_moreCars.visible = false
	label_Cars.visible = false
	label_Boats.visible = false

btn_cancel_moreBoats.on Events.Click, ->
	moreBoats.states.next()
	btn_moreBoats.visible = true
	btn_cancel_moreBoats.visible = false
	btn_moreCars.visible = true
	label_Cars.visible = true
	label_Boats.visible = true