extends Badge

func onOpenBox(box):
	if !unlocked and main.getBoxStat("monster", "timesActivated") >= 50:
		unlock()

func getProgress():
	return main.getBoxStat("monster", "timesActivated")

func getMaxProgress():
	return 50
