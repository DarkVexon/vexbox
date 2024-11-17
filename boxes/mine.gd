extends Box

func on_other_box_opened(box) -> void:
	for other in get_adjacent_boxes(false, false):
		if box == other:
			lg("Mined some gold!")
			modStat("timesActivated", 1)
			main.add_status(StatusTypes.GOLD, 1)
