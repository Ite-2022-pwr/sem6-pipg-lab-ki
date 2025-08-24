extends Control

func _ready():
	$Timer.start()

func _on_timer_timeout():
	for i in range(1, 10):
		var label_name = "StarHolder/Star" + str(i)
		var label_node = get_node(label_name)
		label_node.rotation_degrees += 45
		
		if label_node.rotation_degrees >= 360:
			label_node.rotation_degrees = 0
