# Import file "tutorial01"
sketch = Framer.Importer.load("imported/tutorial01@1x", scale: 1)

Utils.globalLayers(sketch)

#grows from bottom corner
menu.originX = 0
menu.originY = 1

menu.states.menuOff =
	opacity: 0.00
	scale: 0.50

menu.states.menuOn =
	opacity: 1
	scale: 1
	
#menu animations
menu.animationOptions =
	time: 0.36
	curve: Spring(damping: 0.65)
	
menu.stateSwitch("menuOff")

btnPlus.onClick (event, layer) ->
	menu.animate "menuOn"

btnPlus.onClick (event, layer) ->
	menu.animate "menuOff"
	
	



