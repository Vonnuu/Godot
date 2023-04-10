extends Node2D

var elud=1
func _ready():
	$music.play()
	


func _on_mute_pressed():
	$music.stream_paused = !$music.stream_paused

func _process(delta):
	
	if $player.position.y > 1000.0:
		$player.position = Vector2(94.0, 145.0)
