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
		
shapes = [icon01,icon02,icon03,icon04,icon05]

currentPoint = []

for i in [0..4]
	currentPoint[i] = shapes[i].point
	shapes[i].x = 180
	shapes[i].y = 520
	shapes[i].states.letsgo = 
		point: currentPoint[i]
		rotation: 360

btnStart.states =
	zoomin:
		scale: 1.05
		options:
			curve: "spring"
	zoomout:
		scale: .95
		options: 
			curve: "spring"

btnStart.onMouseOver ->
	btnStart.stateCycle("zoomin","zoomout")
	for i in [0..4]
		shapes[i].animate "letsgo",
			curve: "spring(200,15)"
			
btnStart.onMouseOut ->
	btnStart.stateCycle("zoomin","zoomout")
	for i in [0..4]
		shapes[i].stateCycle()
		
