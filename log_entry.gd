extends Control

var ID

func load(newTexture, newText, boxID):
	$TextureRect.texture = newTexture
	$Label.text = newText
	ID = boxID

func updateTooltipForMe():
	var name = get_parent().get_parent().get_parent().tr("box." + ID + ".name")
	var desc = get_parent().get_parent().get_parent().tr("box." + ID + ".desc")
	get_parent().get_parent().get_parent().get_node("Tooltip").setup(name, "", desc)

func _process(delta: float) -> void:
	if ID != null and hovered:
		updateTooltipForMe()

var hovered = false

func _on_mouse_entered() -> void:
	hovered = true

func _on_mouse_exited() -> void:
	hovered = false
