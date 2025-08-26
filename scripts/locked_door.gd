extends Node3D

func _on_snap_zone_has_picked_up(what: Variant) -> void:
	$StaticBody3D.queue_free()
	$MeshInstance3D.queue_free()
