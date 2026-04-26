extends StaticBody2D

signal door_opened

var levertaken = false
var in_door_zone = false


func _on_area_2d_body_entered(body: PhysicsBody2D) -> void:
	if levertaken == false:
		levertaken = true
		$lever.queue_free()
func _process(delta):
		if levertaken == true:
			if in_door_zone == true:
				if Input.is_action_just_pressed("interact"):
					print("opened")
					emit_signal("door_opened")


func _on_door_zone_body_entered(body: PhysicsBody2D) -> void:
	in_door_zone = true
func _on_door_zone_body_exited(body: Node2D) -> void:
	in_door_zone = false
