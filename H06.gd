extends Node

var rng = RandomNumberGenerator.new()
func _ready():
	print("---------------------ÜL6------------------------")
	var koletis=100
# warning-ignore:unused_variable
	var kuulid=5
# warning-ignore:unused_variable
	var skoor=0
# warning-ignore:unused_variable
	var pihtas = bool(randi() % 2)
	#while koletis > 0:
		
		
		#koletis-=dmg
		#print(koletis, " On elusi Koletisel ", "Sa tegid ", dmg, "valu")
	#while koletis > 0:
# warning-ignore:unused_argument
func _process(delta):
	if Input.is_action_just_pressed("laskmine"):
		rng.randomize()
		var dmg = rng.randi_range(8,15)
		print("piu piu")
		
	
		
	
	
