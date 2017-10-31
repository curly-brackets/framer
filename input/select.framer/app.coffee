bg = new BackgroundLayer
	backgroundColor: "333"



layer = new Layer
	html: "<select id='selectACar'><option value='Volvo'>Volvo</option><option value='Saab'>Saab</option><option value='Mercedes'>Mercedes</option><option value='Audi'>Audi</option></select>"
	backgroundColor: "false"
	x: Align.center
	y: Align.center

selectedItem = new TextLayer
	x: Align.center
	y: 30
	text: document.getElementById("selectACar").value

updateText = ->
	selectedItem.text = document.getElementById("selectACar").value

document.getElementById("selectACar").addEventListener("change", updateText)

