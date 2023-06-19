extends Control


func _ready() -> void:
	visible = false
	if InputMap.has_action("console_toggle") == false:
		push_error("Action `console_toggle` does not exist. Please set it up in input settings.")
		process_mode = Node.PROCESS_MODE_DISABLED


func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("console_toggle"):
		visible = !visible
