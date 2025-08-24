extends Camera3D
@export var target: NodePath
@export var speed := 1.0
@export var enabled: bool

func _process(delta: float) -> void:
	var target_node := get_node(target) as Node3D
	if not enabled or not target_node:
		return

	global_transform = global_transform.interpolate_with(
		target_node.global_transform, speed * delta)
