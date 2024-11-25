extends TextureRect

func addBox(box):
	var rect = TextureRect.new()
	rect.texture = box.revealedImg
	rect.expand_mode = TextureRect.EXPAND_IGNORE_SIZE
	rect.custom_minimum_size = Vector2(44, 44)
	$Tooltip/ImagesContainer.add_child(rect)

func _process(_delta):
	var mousePos = get_viewport().get_mouse_position()
	if mousePos.x >= global_position.x and mousePos.x <= global_position.x + 40 and mousePos.y >= global_position.y and mousePos.y <= global_position.y + 40:
		$Tooltip.visible = true
	else:
		$Tooltip.visible = false
