extends CharacterBody2D
var nearby_interactables
var movement_speed=500.0
var normal_speed=500.0
var sprint_speed=800.0
var is_invisible = false 
var cunt_array = []
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#pass
	#position = position + Vector2(1,0) * movement_speed * delta 

#Sprint Part
	if Input.is_action_pressed("sprint true"):
		movement_speed=sprint_speed
	else:
		movement_speed=normal_speed

#All movement in the different directions
	if Input.is_action_pressed("move_right"):
		position = position + Vector2(1,0) * movement_speed * delta
	if Input.is_action_pressed("move_left"):
		position = position + Vector2(-1,0) * movement_speed * delta
	if Input.is_action_pressed("move_up"):
		position = position + Vector2(0,-1) * movement_speed * delta
	if Input.is_action_pressed("move_down"):
		position = position + Vector2(0,1) * movement_speed * delta
	if Input.is_action_pressed("interact"):
		pass


func _on_area_2d_area_entered(area: Area2D) -> void:
	pass # Replace with function body.
	


func _on_area_2d_area_exited(area: Area2D) -> void:
	pass # Replace with function body.
