extends Node

signal gate_opened


var keytaken = false
var in_gate_zone = false

func _on_area_2d_body_entered(body: PhysicsBody2D) -> void:
	if keytaken == false:
		keytaken = true
		$BoneKey.queue_free()
func _process(delta):
	if keytaken == true:
		if in_gate_zone == true:
			if Input.is_action_just_pressed("interact"):
				emit_signal("gate_opened")


func _on_gatezone_body_entered(body: Node2D) -> void:
	in_gate_zone = true


func _on_gatezone_body_exited(body: Node2D) -> void:
	in_gate_zone = false
