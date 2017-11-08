# Import file "tutorial02"
sketch = Framer.Importer.load("imported/tutorial02@1x", scale: 1)

Utils.globalLayers(sketch)

# Set-up FlowComponent
flow = new FlowComponent
flow.showNext(home)

scroll = ScrollComponent.wrap(sketch.homeScreen)
scroll.scrollHorizontal = false
scroll.height = Screen.height - 68

# Show our "article" on tap
homeScreen.onTap ->
	flow.showNext(article)
	homeScreen.hide



