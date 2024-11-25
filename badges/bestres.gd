extends Badge

func onOpenBox(box):
	if !unlocked and main.getBoxStat("revival", "timesActivated") >= 30:
		unlock()

func getProgress():
	return main.getBoxStat("revival", "timesActivated")

func getMaxProgress():
	return 30
