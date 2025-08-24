extends Label

var coins = 0

func _ready():
	text = str(coins)


func _on_coin_collected() -> void:
	coins = coins + 1
	_ready()
	if coins == 5:
		$Timer.start()
	

func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file.call_deferred("res://you_win.tscn")
