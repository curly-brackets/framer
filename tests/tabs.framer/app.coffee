flow = new FlowComponent
 
# Show the layer 
flow.showNext(screenDetail)

mcALL.states = 
	show:
		opacity: 1
	hide:
		opacity: 0
mcALL.stateSwitch("show")
	
mcBD.parent = screenA	
mcBD.states =
	show:
		opacity: 1
	hide:
		opacity: 0
mcBD.stateSwitch("hide")

mcANN.parent = screenA	
mcANN.states =
	show:
		opacity: 1
	hide:
		opacity: 0
mcANN.stateSwitch("hide")

tabALL.onTap ->
	mcALL.stateSwitch("show")
	mcBD.stateSwitch("hide")
	mcANN.stateSwitch("hide")

tabBD.onTap ->
	mcALL.stateSwitch("hide")
	mcBD.stateSwitch("show")
	mcANN.stateSwitch("hide")
	
tabANN.onTap ->
	mcALL.stateSwitch("hide")
	mcBD.stateSwitch("hide")
	mcANN.stateSwitch("show")

# nameAllen.onTap ->
# 	flow.showNext(screenDetail)

animationA = new Animation dotStart,
    opacity: 1
    scale: .2
    options:
     curve:Spring()
	
btnSave.onTap ->
	flow.showNext(screenA)
	animationA.start()
		

	

	