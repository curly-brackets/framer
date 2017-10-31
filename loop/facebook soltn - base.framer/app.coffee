# base = new Layer
# 	backgroundColor: null

names = ["Mary", "Steve", "Anne"]
for i in [0...3]
	rows = new Layer 
		html: names[i]
# 		parent: base
		y: 45 * i
		height: 44
		name: "layer" + (i+1)

layer3.children[0].style =
	background: "blue"