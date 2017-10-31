# undo.parent = screenA


	
screenB.on Events.TouchStart, ->
	screenB.parent = screenA
#	screenB.animate
# 		properties:
# 			scale: 5
			
btnMore.onTap ->
	screenB.stateCycle()