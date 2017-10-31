flow = new FlowComponent
flow.showNext(abHome)

flow.header = headerNav

btnMore.onTap ->
	flow.showNext(abMore)
	
btnSave.onTap ->
	flow.showNext(abHomeUpdated)