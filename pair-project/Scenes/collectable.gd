extends Area2D

@export var item_id: String

func _ready():
	# If already collected, remove it immediately
	if GameState.is_collected(item_id):
		queue_free()

func _on_body_entered(body):
	#print("Entered:", body.name)
	#print("Groups:", body.get_groups())

	if body.is_in_group("player"):
		GameState.collect(item_id)
		queue_free()
