# Import file "tutorial02"
sketch = Framer.Importer.load("imported/tutorial02@1x", scale: 1)
Utils.globalLayers(sketch)

Framer.Defaults.Animation = 
    curve: Spring(damping: 0.7)
    time: 0.5

# Set-up FlowComponent
flowComp = new FlowComponent
tabNav.y = 619
tabNav.z = 100
tabNav.parent = flowComp
navSocial.y = 611
navSocial.parent = flowComp
navSocial.z = 101
navSocial.opacity = 0
	
likeImg = new Layer
	image: "images/imgLikeL.png"
	x: 14
	y: 624
	width:27
	height: 27
	opacity: 0

flowComp.showNext(home)

# Show our "article" on tap
marine.onTap ->
    flowComp.showNext(article)
    
back.onTap ->
    flowComp.showPrevious(home)
    
 # Show & hide "overlay" on Tap
cover.onTap ->
	flowComp.showOverlayBottom(overlay)

exit.onTap ->	
	flowComp.showPrevious(article)

tabNav.states =
	Invisible:
		opacity:0
	Visible:
		opacity:1
		
navSocial.states =
	Invisible:
		opacity:0
	Visible:
		opacity:1

like.states =
	Invisible:
		opacity: 0
	Visible:
		opacity: 1
		
likeImg.states =
	Invisible:
		opacity: 1
	Visible:
		opacity: 0

likeImg.onTap ->
	like.stateCycle()
	likeImg.stateCycle()
# delete likeImg.states.default
	
marine.onTap ->
	tabNav.states.switch "Invisible"
	navSocial.states.switch "Visible"
	
back.onTap ->
	navSocial.states.switch "Invisible"
	tabNav.states.switch "Visible"

cover.onTap ->
	navSocial.states.switch "Invisible"
	
exit.onTap ->
	navSocial.states.switch "Visible"
	










