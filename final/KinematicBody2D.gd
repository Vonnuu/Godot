extends KinematicBody2D

#seaded
const SPEED = 500
const UP = Vector2(0,-1)
const GRAV = 100
const JUMPHIGH = -1500

var motion = Vector2()
var health = 100

#func _ready():
	#$hbar/TextureProgress.value = health
	#if health==0:
		#get_tree().quit()
		


func _physics_process(delta):
	motion.y += GRAV
	run()
	jump()
	motion = move_and_slide(motion, UP)
	
#funktsioonid
func run():
	if Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left"):
		motion.x = SPEED
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("run")
	elif Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		motion.x = -SPEED
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("run")
	else:
		motion.x = 0
		$AnimatedSprite.play("idle")
		
func jump():
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = JUMPHIGH
	else:
		$AnimatedSprite.play("jump")
		



func _on_enemy_detector_body_entered(body):
	if "zombei" in body.get_name():
		health-=25


func _on_hcrystal_take_health():
	if health==100:
		health+=0
	else:
		health+=25
