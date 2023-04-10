extends Control


func _on_newGame_pressed():
	get_tree().change_scene("res://Level1.tscn")

func _on_Seaded_pressed():
	pass #kuna seda stseeni pole

func _on_Exit_pressed():
	get_tree().quit()


func _on_Exit2_pressed():
	get_tree().change_scene("res://patch.tscn")
