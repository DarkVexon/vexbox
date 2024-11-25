extends Badge

func postRevealBox(other):
	if !unlocked:
		var count = 0
		for box in main.boxes:
			if box.revealed and !box.destroyed:
				count += 1
		if count >= 100:
			unlock()

func getProgress():
	return unlocked

func getMaxProgress():
	return 1
