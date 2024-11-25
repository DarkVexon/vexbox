extends Badge

func postDestroyBox(box):
	if !unlocked and main.getBoxStat("curse", "timesDestroyed") >= 20:
		unlock()

func getProgress():
	return main.getBoxStat("curse", "timesDestroyed")

func getMaxProgress():
	return 20

func onRunStart():
	if enabled:
		for box in main.rows[1]:
			box.revealBox()
		for box in main.rows[2]:
			box.revealBox()
		main.rows[main.unlockedRows-1][0].loadType("curse")
		main.rows[main.unlockedRows-1][0].openBox()
		var size = main.rows[main.unlockedRows-1].size()
		main.rows[main.unlockedRows-1][size-1].loadType("curse")
		main.rows[main.unlockedRows-1][size-1].openBox()

func getCost():
	return 2
 
