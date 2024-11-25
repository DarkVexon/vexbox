extends Badge

var hintScene = preload("res://Hint.tscn")

func postGameEnd():
	if !unlocked and main.wins >= 100:
		unlock()

func getProgress():
	return main.wins

func getMaxProgress():
	return 100

func onRunStart():
	if enabled:
		var hintRow5 = hintScene.instantiate()
		for box in main.rows[4]:
			hintRow5.addBox(box)
		var hintRowTen = hintScene.instantiate()
		for box in main.rows[9]:
			hintRowTen.addBox(box)
		main.addVfx(hintRow5)
		main.addVfx(hintRowTen)
		hintRow5.global_position = Vector2(960, 260)
		hintRowTen.global_position = Vector2(1100, 555)
