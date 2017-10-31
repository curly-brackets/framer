
# ------- ALERT EXAMPLE -------

# alert_one_button.opacity = 0
# alert_one_button.scale = 1.2
# alert_one_button_tap.opacity = 0
# 
# alert_one_button.animate
# 	opacity: 1	
# 	scale: 1
# 	options:
# 		time: .3
# 
# alert_one_button_tap.onTap ->
# 	alert_one_button_tap.opacity = 1
# 	alert_one_button.animate
# 		opacity: 0
# 		options:
# 			time: .3

# ------- KEYBOARD EXAMPLE -------

# key_d_uppercase.animate
# 	y: 451
# 	options:
# 		time: .3

# ------- ACTIVITY EXAMPLE -------

# action_sheet.opacity = 0
# 
# 
# key_d_uppercase_1.onTap ->
# 	
# 	key_d_uppercase_1.animate
# 		y: 667
# 		options:
# 			time: .3
# 	
# 	action_sheet.animate
# 		opacity: 1
# 		options:
# 			time: .3
# 			delay:  0
# 	
# 	action_sheet_popup.animate
# 		y: 314
# 		options:
# 			time: .3
# 			delay:  .1

# ------- SEARCH EXAMPLE -------

# search_bar_active.opacity = 0
# overlay.opacity = 0
# 
# search_bar.onTap ->
# 	@.animate
# 		y: 20
# 		options: 
# 			time: .3
# 	overlay.animate
# 		opacity: 1
# 	navigation_bar_simple.animate
# 		y: -navigation_bar_simple.height
# 		options: 
# 			time: .3
# 	search_bar_active.animate
# 		opacity: 1
# 		options: 
# 			delay: .1
# 			time: .2
# 	key_w_uppercase.animate
# 		y: 451
# 		options: 
# 			time: .3
# 			delay: .1

# ------- TABS EXAMPLE -------

# first.states = 
# 	active:
# 		backgroundColor: "#0076FF"
# 
# first_label.states =
# 	active:
# 		brightness: 300
# 		saturate: 0
# 
# second.states = 
# 	active:
# 		backgroundColor: "#0076FF"
# 
# second_label.states =
# 	active:
# 		brightness: 300
# 		saturate: 0
# 
# third.states = 
# 	active:
# 		backgroundColor: "#0076FF"
# 
# third_label.states =
# 	active:
# 		brightness: 300
# 		saturate: 0
# 
# first.stateSwitch "active"
# first_label.stateSwitch "active"
# 
# first.onTap ->
# 	first.stateSwitch "active"
# 	first_label.stateSwitch "active"
# 	second.stateSwitch "default"
# 	second_label.stateSwitch "default"
# 	third.stateSwitch "default"
# 	third_label.stateSwitch "default"
# 
# second.onTap ->
# 	first.stateSwitch "default"
# 	first_label.stateSwitch "default"
# 	second.stateSwitch "active"
# 	second_label.stateSwitch "active"
# 	third.stateSwitch "default"
# 	third_label.stateSwitch "default"
# 
# third.onTap ->
# 	first.stateSwitch "default"
# 	first_label.stateSwitch "default"
# 	second.stateSwitch "default"
# 	second_label.stateSwitch "default"
# 	third.stateSwitch "active"
# 	third_label.stateSwitch "active"

# ------- PAGE EXAMPLE -------

page = new PageComponent
	width: Screen.width
	height: Screen.height
	scrollVertical: false

page.addPage(i1, "right")
page.addPage(i2, "right")
page.addPage(i3, "right")

item1.superLayer = Framer.Device.Screen
item1.y = 667 - item1.height
item2.superLayer = Framer.Device.Screen
item2.y = 667 - item1.height
item3.superLayer = Framer.Device.Screen
item3.y = 667 - item1.height

item1.onTap ->
	page.snapToPage(i1)
	ico1.opacity = 1
	ico2.opacity = .3
	ico3.opacity = .3

item2.onTap ->
	page.snapToPage(i2)
	ico2.opacity = 1
	ico1.opacity = .3
	ico3.opacity = .3

item3.onTap ->
	page.snapToPage(i3)
	ico3.opacity = 1
	ico1.opacity = .3
	ico2.opacity = .3








