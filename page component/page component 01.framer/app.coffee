page = new PageComponent
    width: Screen.width
    height: Screen.height
    scrollVertical: false

# Add the second page to the right 
page.addPage(abPageOne)
page.addPage(abPageTwo, "right")

btnMore.onTap ->
	page.snapToPage(abPageTwo)
	
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
	page.snapToPage(abPageOne)
	
#the disappearing undo
dialog.states =
	state01:
		opacity: 0
		animationOptions:
			delay: 3
abPageOne.onTap ->
	dialog.stateCycle()