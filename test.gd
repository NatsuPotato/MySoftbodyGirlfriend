extends SoftBody3D

# https://docs.godotengine.org/en/stable/classes/class_softbody3d.html

func _ready() -> void:
	
	var arrays = mesh.surface_get_arrays(0)[0]
	
	for i in arrays.size():
		if (arrays[i].y > 0.5):
			set_point_pinned(i, true)

func _process(_delta: float) -> void:
	pass
