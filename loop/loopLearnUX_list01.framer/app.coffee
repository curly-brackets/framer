#Roboto Mono
Utils.insertCSS('@import url(https://fonts.googleapis.com/css?family=Roboto+Mono);')
# Set up FlowComponent
flow = new FlowComponent
flow.showNext(ab01)

base = new Layer
	backgroundColor: "red"

names = ["Mary", "Steve", "Anne"]

for i in [0...3]
	rows = new Layer	
		html: names[i]
		y: 45 * i
		height: 44
		width: screen.width
		backgroundColor:"none"
		opacity: 1
		name: "layer" + (i+1)
	rows.style =
		fontSize: "11px"
		fontFamily: "Roboto"
		fontWeight: 600
		paddingTop:"16px"
		marginTop:"50px"

base.style = 
	background:"blue"
	
layer1.style = 
	
		
m1.onTap ->
	flow.showNext(ab02)
	
m2.onTap ->
	flow.showNext(ab03)
	
m3.onTap ->
	flow.showNext(ab04)
	
navBar.onTap ->
	flow.showPrevious()
navBar_1.onTap ->
	flow.showPrevious()
navBar_2.onTap ->
	flow.showPrevious()



