extends Badge

func postDestroyBox(box):
	if !unlocked and main.getStat("bombsExploded") >= 100:
		unlock()

func getProgress():
	return main.getStat("bombsExploded")

func getMaxProgress():
	return 100
