# Import file "tutorial02"
sketch = Framer.Importer.load("imported/tutorial02@1x", scale: 1)

Utils.globalLayers(sketch)

# Set-up FlowComponent
flowComp = new FlowComponent
	height: 923

flowComp.header = sketch.statusBar
flowComp.header.y = 0

flowComp.footer = sketch.bottomNav
flowComp.footer.y= 619

flowComp.showNext(home)







