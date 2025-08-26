extends Control

var correct_code = "TWO ONE THREE FOUR "
var curr_code = ""
var powered_up = false

func _ready() -> void:
	Globals.numpad_node = self
	for btn in $GridContainer.get_children():
		btn.pressed.connect(func():
			update_code(btn.text))

func update_code(val):
	if not powered_up:
		return
	if val == "SUBMIT":
		if curr_code == correct_code:
			get_tree().change_scene_to_file("res://scenes/win.tscn")
		else:
			curr_code = ""
	else:
		curr_code += val + " "
	$Panel2/Label.text = curr_code

func activate():
	powered_up = true
	$Panel2.self_modulate = Color8(0, 255, 0)
