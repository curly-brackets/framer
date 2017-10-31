# Import file "framer_contact" (sizes and positions are scaled 1:2)
sketch = Framer.Importer.load("imported/framer_contact@2x")
InputModule = require "input"
Screen.backgroundColor = "#efeff4"

myStyle = {
	"color": "blue"
}

myStyle2 = {
	"color": "green"
}

nameInput = new Layer
	backgroundColor: "red"
	html: "Last Name"
	width: 750
	borderColor: "black"
	style: myStyle	

emailInput = new Layer
	backgroundColor: "red"
	html: "Email"
	width: 750
	borderColor: "black"
	y: 500
	style: myStyle2


class MyInput extends InputModule.Input
	constructor: (options) ->
		super _.defaults options,
			setup: true
			placeholderColor: "#9B9B9B"
			backgroundColor: "white"
			borderColor: "black"
			#style: myStyle
			

new MyInput
	y: 200
	placeholder: "First Name"

new MyInput
	y: 300
	placeholder: "Last Name"

new MyInput
	y: 400
	placeholder: "Email"	
	
