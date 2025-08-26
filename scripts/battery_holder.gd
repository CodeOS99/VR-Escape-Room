extends MeshInstance3D

func _on_snap_zone_has_picked_up(what: Variant) -> void:
	Globals.numpad_node.activate()
