extends StaticBody2D




func _on_lever_area_door_opened() -> void:
	if Input.is_action_just_pressed("interact"):
		get_tree().change_scene_to_file("res://Scenes/world.tscn")
