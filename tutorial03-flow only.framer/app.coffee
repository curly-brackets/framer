# Import file "tutorial02"
sketch = Framer.Importer.load("imported/tutorial02@1x", scale: 1)
Utils.globalLayers(sketch)

Framer.Defaults.Animation = 
    curve: Spring(damping: 0.7)
    time: 0.5
    
# Set-up FlowComponent
flowComp = new FlowComponent
	height: 667
	
likeImg = new Layer
	image: "images/imgLikeL.png"
	x: 14
	y: 604
	width:27
	height: 27
	visible: false

flowComp.header = sketch.statusBar

flowComp.footer = sketch.bottomNav
flowComp.footer.y= 619

flowComp.showNext(home)
flowComp.header.y = 20

# Show our "article" on tap
homeScreen.onTap ->
    flowComp.showNext(article)
    flowComp.footer.visible = false
    flowComp.header.visible = false
    flowComp.y = -20
    sketch.navSocial.y = 591
    
back.onTap ->
    flowComp.showPrevious(home)
    flowComp.footer.visible = true
    flowComp.header.visible = true

    
 # Show & hide "overlay" on Tap
cover.onTap ->
	flowComp.showOverlayBottom(overlay)
	flowComp.y = 0

exit.onTap ->	
	flowComp.showPrevious(article)
		
like.states.liked =
	start:
		likeImg.visible = true
	end:
		likeImg.visible = false

like.states.switchInstant "end"	

like.onTap ->
	like.stateCycle()










