extends Node2D
var elud = 3

func _on_newgame_pressed():
	get_tree().change_scene("res://MAINMENU.tscn")

func _ready():
	$music.play()

func _on_Mute_pressed():
	$music.stream_paused = !$music.stream_paused

func _process(delta):
	
	if $player.position.y > 1000.0:
		elud-=1
		$player.position = Vector2(31.0, 452.0)
	if elud == 3:
		$RichTextLabel2.set_text("Elud: 3")
	elif elud == 2:
		$RichTextLabel2.set_text("Elud: 2")
	elif elud == 1:
		$RichTextLabel2.set_text("Elud: 1")
	elif elud == 0:
		$RichTextLabel2.set_text("Elud: 0")
		$RichTextLabel.set_text("Game OVER")
		$RichTextLabel3.set_text("PRESS NEW GAME TO TRY AGAIN")
		Input.action_release("ui_right")
		Input.action_release("ui_left")
		Input.action_release("ui_up")





