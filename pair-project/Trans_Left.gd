extends Area2D


var entered = false


func _on_body_entered(body: PhysicsBody2D) -> void:
	entered = true


func _on_body_exited(body: PhysicsBody2D) -> void:
	entered = false


func _process(delta):
	if entered == true:
		if Input.is_action_just_pressed("Next Level"):
			get_tree().change_scene_to_file("res://Stage_Left.tscn")


func _on_area_entered(area: Area2D) -> void:
	pass # Replace with function body.
