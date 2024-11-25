extends Badge

func onOpenBox(box):
	if !unlocked and main.status_amount(StatusTypes.GOLD) >= 100:
		unlock()

func getProgress():
	return unlocked

func getMaxProgress():
	return 1

func onGainGold(amount):
	if enabled:
		for i in amount:
			main.reveal_random()
