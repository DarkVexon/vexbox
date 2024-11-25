extends Badge

func postGameEnd():
	if !unlocked and main.wins + main.losses >= 250:
		unlock()

func getProgress():
	return main.wins + main.losses

func getMaxProgress():
	return 250

func isPassive():
	return true

func applyPassive():
	main.badgePoints += 1
	main.updateBadgePoints()
