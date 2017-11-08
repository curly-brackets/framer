# Import file "tutorial02"
sketch = Framer.Importer.load("imported/tutorial02@1x", scale: 1)

Utils.globalLayers(sketch)

scrollComp = new ScrollComponent
	size:Screen.size
	scrollHorizontal: false
	
homeScreen.parent = scrollComp.content


	

	


	
