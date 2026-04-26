extends RichTextLabel
@export var dialogue_moments: Array[String] = [
	"That's Enough, Next Time I'll just Repeat Myself!",
	"Wait, Who are you?",
	"A-a-a Belmont?! But I thought Julius was the last?",
	"Well, Go on! Click that lever, It'll allow you to progress back!",
	"You can stop talking to me now..."
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
