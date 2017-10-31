# tabBD.states =
# 	none:
# 		opacity: 1
# 	yes:
# 		opacity: 0
# 
# mcList.onTap ->
# 	tabBD.stateCycle()
	
tabBD.states =
	none:
		fontWeight: 'bold'
	yes:
		fontStyle: 'italic'

mcList.onTap ->
	tabBD.stateCycle()