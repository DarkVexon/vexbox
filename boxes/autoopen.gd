extends Box

func on_other_box_opened() -> void:
    var valids = get_adjacent_boxes(false, true)
    if valids.size() > 0:
        lg(nameText + " is opening a box!")
        var toOpen = valids.pick_random()
        toOpen.openBox()
        toOpen.just_opened = true