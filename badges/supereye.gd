extends Badge

func onOpenBox(box):
	if !unlocked and box.id == "allseeingeye":
		if main.getBoxStat("allseeingeye", "opens") >= 25:
			unlock()

func getProgress():
	return main.getBoxStat("allseeingeye", "opens")

func getMaxProgress():
	return 25

func getCost():
	return 1
 
