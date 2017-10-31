flow = new FlowComponent

flow.showNext(A01)

row03.onTap ->
	flow.showNext(A02)
	


button.states =
	toBlue:
		backgroundColor:"blue"
	toDefault:
		backgroundColor: "#bbb"
		
button.onTap ->
	button.stateCycle "toBlue", "toDefault"