flow = new FlowComponent
flow.showNext(detail)

flow.header = topNavBg
flow.footer = myFooter

flow.header.visible = false
flow.footer.visible = false

btnHome.onTap (event, layer) ->
	flow.showNext(list)
	flow.header.visible = true
	flow.footer.visible = true
	
	
menuButton.onTap (event, layer)->
	flow.showOverlayLeft(menu)
	
	
btnClose.onTap ->
	flow.showPrevious()
	
listContent.onTap ->
	flow.showNext (detail)
	flow.footer.visible = false


topNavBg.visible = true

images = [imgOne, imgTwo, imgThree]

infoBox.states = 
	show:
		y: 475
		options: 
			curve: "spring"
			delay: .4

for i in [0..2]
	images[i].states = 
		show:
			frame: Screen.frame
			options:
				curve: "spring"
	images[i].onTap ->
		@.stateCycle()
		@.bringToFront()

		infoBox.stateCycle()
		infoBox.bringToFront()