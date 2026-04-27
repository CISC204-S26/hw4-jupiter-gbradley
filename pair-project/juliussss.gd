extends RichTextLabel
@export var dialogue_moments: Array[String] = [
	"What are you waiting for?! GO!!",
	"C-Christopher?! How are you alive?!",
	"Wait, It doesn't matter. Dracula has risen again...",
	"We need to finish the fight right here and now!",
	"Go on! Jump through the window and into the carriage!"
]
var Dialogue_order_index = 0

func _process(delta: float) -> void:
	var displayed_text = ""
	if Input.is_action_just_pressed("Continue"):
		Dialogue_order_index += 1
		if Dialogue_order_index >= dialogue_moments.size():
			Dialogue_order_index=0
		for character in dialogue_moments[Dialogue_order_index]:
			displayed_text += character
			text = displayed_text
			await get_tree().create_timer(0.02).timeout

func _ready() -> void:
	pass
