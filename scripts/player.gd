extends XROrigin3D

func _ready() -> void:
	if Globals.player == null or not is_instance_valid(Globals.player):
		Globals.player = self
