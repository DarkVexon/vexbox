extends Badge

func onOpenBox(box):
	if !unlocked and main.getBoxStat("sweeper", "opens") + main.getBoxStat("winseeker", "opens") >= 50:
		unlock()

func getProgress():
	return main.getBoxStat("sweeper", "opens") + main.getBoxStat("winseeker", "opens")

func getMaxProgress():
	return 50

func onRunStart():
	if enabled:
		for i in 3:
			var valids = []
			for box in main.boxes:
				if box.id != "sweeper" and box.id != "winseeker":
					valids.append(box)
			valids.pick_random().loadType("sweeper")
		for i in 3:
			var valids = []
			for box in main.boxes:
				if box.id != "sweeper" and box.id != "winseeker":
					valids.append(box)
			valids.pick_random().loadType("winseeker")
