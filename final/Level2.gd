extends Node2D



func _on_mute1_pressed():
	$music1.stream_paused = !$music1.stream_paused

func _process(delta):
	
	if $player.position.y > 1000.0:
		$player.position = Vector2(271.0, 136.0)


