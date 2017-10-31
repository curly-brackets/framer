
chunks = [m1,m2,m3]

for i in [0..2]
	chunks[i].states =
		show:
			frame: Screen.frame
			
	chunks[i].onTap ->
		@.bringToFront()
		@.stateCycle()



# m1.states = 
# 	show:
# 		frame: Screen.frame
# 		
# m1.onTap ->
# 	@.bringToFront()
# 	@.stateCycle()