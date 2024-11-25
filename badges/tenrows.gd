extends Badge

func postGameEnd():
	if !unlocked and main.unlockedRows >= 10:
		unlock()

func getProgress():
	return main.unlockedRows

func getMaxProgress():
	return 10

func isPassive():
	return true

func applyPassive():
	main.badgePoints += 1
	main.updateBadgePoints()
