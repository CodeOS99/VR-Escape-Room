extends Node3D

func _on_snap_zone_has_picked_up(what: Variant) -> void:
	self.queue_free()
