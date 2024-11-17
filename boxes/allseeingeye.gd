extends Box

func on_open() -> void:
	for i in 10:
		main.reveal_random()
	set_custom_num(3)

func on_other_box_opened(box) -> void:
	if customNum > 0:
		if customNum == 1:
			lg("All Seeing Box activates!")
			lose()
		set_custom_num(customNum - 1)
		if main.gameRunning and customNum == 0:
				hide_custom_num()
