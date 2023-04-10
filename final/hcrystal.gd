extends Area2D
 
signal take_health
 
func _on_heart_body_entered(body):
	if body.get_name()=="Player":
		emit_signal("take_health")
		queue_free()
