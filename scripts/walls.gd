extends StaticBody3D

func _ready() -> void:
	var meshes: Array[Node] = get_children()
	for mesh in meshes:
		var col_shape = CollisionShape3D.new()
		col_shape.shape = mesh.mesh.create_convex_shape()
		add_child(col_shape)
		print(mesh.global_position)
		col_shape.global_position = mesh.global_position
