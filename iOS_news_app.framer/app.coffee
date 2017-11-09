# Import file "tutorial02"
sketch = Framer.Importer.load("imported/tutorial02@1x", scale: 1)
Utils.globalLayers(sketch)

Framer.Defaults.Animation = 
    curve: Spring(damping: 0.7)
    time: 0.5

# Set-up FlowComponent
flowComp = new FlowComponent
bottomNav.y = 619
bottomNav.z = 100
navSocial.y = 611
navSocial.parent = flowComp
	
likeImg = new Layer
	image: "images/imgLikeL.png"
	x: 14
	y: 624
	width:27
	height: 27
	opacity: 0

flowComp.showNext(home)

# Show our "article" on tap
homeScreen.onTap ->
    flowComp.showNext(article)
    navSocial.z = 20
    
back.onTap ->
    flowComp.showPrevious(home)
    
 # Show & hide "overlay" on Tap
cover.onTap ->
	flowComp.showOverlayBottom(overlay)

exit.onTap ->	
	flowComp.showPrevious(article)


like.states =
	start:
		opacity: 0
	end:
		opacity: 1
		
likeImg.states =
	start:
		opacity: 1
	end:
		opacity: 0

likeImg.onTap ->
	like.stateCycle()
	likeImg.stateCycle()










