

flow = new FlowComponent

flow.showNext(abHome)
	
htAlert.onTap ->
	flow.showNext(abAlerts)
	
htAlertDetail.onTap ->
	flow.showNext(abCardDetail)
	
htAlertDetail.onClick ->
    flow.showPrevious()
	
htNotes.onTap ->
	flow.showNext(abNotes)

	


