
#spacing and sizing
items = 10
padding = 25
fullHeight = 100
headingHeight = 50


# scroll component
scrollComp = new ScrollComponent
	width: Screen.width
	height: Screen.height
	scrollHorizontal: false
	backgroundColor: "#AF5172"
scrollComp.center()


# Just for coolness
Framer.Defaults.Animation = curve: "spring(300,30,0)"

# arrays
cards = []
Headers = []


# creating cards
for i in [0...12]

	card = new Layer
		width: scrollComp.width - (padding * 2)
		parent: scrollComp.content
		backgroundColor: "#fff"
		opacity: 0.8
		hueRotate: i * 15
		brightness: 120
		height: fullHeight
		y: i * (fullHeight + padding) + padding 
	card.centerX()
	
	
	

# creating header & states
stickyHeader = new Layer
	width: scrollComp.width
	parent: scrollComp
	backgroundColor: "#D47797"
	height: headingHeight
	shadowY: 2
	shadowBlur: 4
	shadowColor: "rgba(0,0,0,0.1)"
	
stickyHeader.states = 
	down: 
		height: headingHeight / 2
		backgroundColor: "#6A092B"
	up: 
		height: headingHeight
		backgroundColor: "#D47797"

heading = new Layer
	width: 200
	height: 30
	parent: stickyHeader
	backgroundColor: "#fff"
	borderRadius: 40
	x: padding
	y: 10
heading.states = 
	down: 
		height: 15
		width: 100
		y: 5
	up: 
		height: 30
		width: 200
		y: 10



# switching states on scroll direction
	
scrollComp.onScroll ->
		
	
	if scrollComp.direction == "down"
		heading.states.switch "down"
		stickyHeader.states.switch "down"
		
	else	
		heading.states.switch "up"
		stickyHeader.states.switch "up"

