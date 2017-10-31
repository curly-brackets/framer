# Create layers 
layerA = new Layer
	backgroundColor: "blue"
 
layerB = new Layer
	backgroundColor: "yellow"

# Create FlowComponent 
flow = new FlowComponent
flow.showNext(layerA)

hsBack = new TextLayer
	text: "back"
	fontSize: 22
	color: "red"
	x: 50
	y: 50
	
hsRestart = new TextLayer
	text: "restart"
	fontSize: 22
	color: "red"
	x: 190
	y: 50

# Custom transition 
scaleTransition = (layerA, layerB) ->
    transition =
        layerA:
            show:
                scale: 1.0
                opacity: 1
            hide:
                scale: 0.5
                opacity: 0
        layerB:
            show:
                scale: .5
                opacity: 1
            hide:
                scale: .5
                opacity: 0
 
# Switch to layerB with custom transition 
hsBack.onTap ->
    flow.transition(layerB, scaleTransition)
    
hsRestart.onTap ->
	flow.showPrevious(animate:false)