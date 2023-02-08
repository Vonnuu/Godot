extends Node2D
var elud = 3

func _process(delta):
	
	if $player.position.y > 650.0:
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
		get_tree().paused = true
