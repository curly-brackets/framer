#artwork
background = new BackgroundLayer
	backgroundColor: "#eee"

scrollableContent = new ScrollComponent 
	x:0, y:0, width: Screen.width, height: Screen.height,
	mouseWheelEnabled: true
	
contentHome = new Layer 
	x:0, y:210, 
	width:750, height:1603, 
	image:"images/apps.png", 
	superLayer: scrollableContent.content
	
contentGraphs = new Layer
	x:0, y:40,
	width:750, height:1334,
	image:"images/graphs.png",
	visible: false
	superLayer: scrollableContent.content
	
contentReminders = new Layer
	x:0, y:40,
	width:750, height:1199,
	image:"images/reminders.png",
	visible: false
	
contentLogs = new Layer
	x:0, y:40,
	width:750, height:1265,
	image:"images/logs.png",
	visible: false
	superLayer: scrollableContent.content
	
contentArticles = new Layer
	x:0, y:40,
	width:750, height:1865,
	image:"images/articles.png"
	visible: false
	superLayer: scrollableContent.content

status = new Layer
	width:750, height:40
	image:"images/status.png",
	visible:true

top = new Layer
	x:0, y:40,
	width:750, height:171,
	image:"images/exitos.png",
	visible:true

tabs = new Layer
	x:0, y:1240,
	width:750, height:96,
	image:"images/tabs.png"

#buttons
btn_Euros = new Layer
	x:600, y:245, width:120, height:70, backgroundColor:"green"
btn_Euros.html="0,99 E"
btn_Euros.style=
	"font-size":"1.1em"
	"color":"white"
	"padding-top":".5em"
	"text-align":"center"
contentHome.addSubLayer(btn_Euros)

#modal
EurosModal = new Layer
	x:0, y:1400, width:750, height:1293, opacity:.5, backgroundColor: "green"
EurosModal.html="our Euros Modal"
EurosModal.style=
	"font-size":"2.8em"
	"padding-top": "4em"

btn_cancel_Euros = new Layer
	x:0, y:0, width:200, height:200, visible: false, backgroundColor: "white"
btn_cancel_Euros.html="Cancel"
btn_cancel_Euros.style=
	"font-size":"1em"
	"color":"red"
	"line-height":"2em"
	"padding-top":"0em"

EurosModal.addSubLayer(btn_cancel_Euros)


#states
EurosModal.states.add
	shown: { visible:true, opacity:1, y:77 }
EurosModal.states.animationOptions =
	time: .5
	curve: "ease-in"

#events - More
btn_Euros.on Events.Click, ->
	EurosModal.states.next()
	btn_Euros.visible = false
	btn_cancel_Euros.visible = true
	
btn_cancel_Euros.on Events.Click, ->
	EurosModal.states.next()
	btn_Euros.visible = true
	btn_cancel_Euros.visible = false
	
# Control layer with all states disabled
control = new Layer 
	x:0, y:1239, width: 750, height:95, image:"images/tabs-none.png"
# home, graphs and reminders button enabled. The home is shown, the other are with opacity 0
home = new Layer 
	x:20, y:1242, width:85, height:92, image:"images/tab-home.png", opacity:0
graphs = new Layer 
	x:166, y:1242, width:99, height:92, image:"images/tab-graphs.png", opacity:0
reminders = new Layer 
	x:332, y:1242, width:89, height:92, image:"images/tab-reminders.png", opacity:0
logs = new Layer 
	x:488, y:1242, width:81, height:92, image:"images/tab-logs.png", opacity:0
articles = new Layer 
	x:653, y:1242, width:79, height:92, image:"images/tab-articles.png", opacity:0
	
# Add states
home.states.add
	active: { opacity:1 }
graphs.states.add
	active: { opacity:1 }
reminders.states.add
	active: { opacity:1 }
logs.states.add
	active: { opacity:1 }
articles.states.add
	active: { opacity:1 }

# Add events
home.on Events.Click, ->
	home.states.switchInstant "active"
	graphs.states.switchInstant "default"
	reminders.states.switchInstant "default"
	logs.states.switchInstant "default"
	articles.states.switchInstant "default"
	top.visible = true
	contentHome.visible = true
	contentGraphs.visible = false
	contentReminders.visible = false
	contentLogs.visible = false
	contentArticles.visible = false
graphs.on Events.Click, ->
	home.states.switchInstant "default"
	graphs.states.switchInstant "active"
	reminders.states.switchInstant "default"
	logs.states.switchInstant "default"
	articles.states.switchInstant "default"
	top.visible = false
	contentHome.visible = false
	contentGraphs.visible = true
	contentReminders.visible = false
	contentLogs.visible = false
	contentArticles.visible = false
reminders.on Events.Click, ->
	home.states.switchInstant "default"
	graphs.states.switchInstant "default"
	reminders.states.switchInstant "active"
	logs.states.switchInstant "default"
	articles.states.switchInstant "default"
	top.visible = false
	contentHome.visible = false
	contentGraphs.visible = false
	contentReminders.visible = true
	contentLogs.visible = false
	contentArticles.visible = false
logs.on Events.Click, ->
	home.states.switchInstant "default"
	graphs.states.switchInstant "default"
	reminders.states.switchInstant "default"
	logs.states.switchInstant "active"
	articles.states.switchInstant "default"
	top.visible = false
	contentHome.visible = false
	contentGraphs.visible = false
	contentReminders.visible = false
	contentLogs.visible = true
	contentArticles.visible = false
articles.on Events.Click, ->
	home.states.switchInstant "default"
	graphs.states.switchInstant "default"
	reminders.states.switchInstant "default"
	logs.states.switchInstant "default"
	articles.states.switchInstant "active"
	top.visible = false
	contentHome.visible = false
	contentGraphs.visible = false
	contentReminders.visible = false
	contentLogs.visible = false
	contentArticles.visible = true
	
# Activate the home one
home.states.switchInstant "active"