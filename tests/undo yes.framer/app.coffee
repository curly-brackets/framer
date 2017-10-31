flow = new FlowComponent
flow.showNext(screenA)

#the disappearing undo
dialog.states =
	state01:
		opacity: 0
		animationOptions:
			delay: 3

#changing state of time
evtChangeTime.on Events.TouchStart, ->
	evtChangeTime.animate
		properties:
			scale: 5
evtChangeTime.on Events.TouchEnd, ->
	evtChangeTime.animate
		properties:
			scale: 1

btnSave.onTap ->
	flow.showNext(screenB)
	
evtChangeTime.onTap ->
	evtChangeTime.stateCycle()

screenA.onClick ->	
	dialog.stateCycle()
	
btnMore.onTap ->
	flow.showPrevious(screenA)
	